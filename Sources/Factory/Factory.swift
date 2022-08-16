import SwiftSyntax 

final 
class Factory:SyntaxRewriter 
{
    var scope:[[String: [ExprSyntax]]] = []

    override 
    init() 
    {
        super.init() 
        self.scope = []
    }

    final private 
    func expand(_ declaration:DeclSyntax) -> [DeclSyntax]?
    {
        if  let expandable:any MatrixElement = 
            declaration.asProtocol(DeclSyntaxProtocol.self) as? MatrixElement
        {
            return expandable.expand(scope: self.scope)
        }
        else 
        {
            return nil
        }
    }

    final private 
    func with<T>(scope bindings:[PatternBindingListSyntax]?, _ body:() throws -> T) rethrows -> T 
    {
        guard let bindings:[PatternBindingListSyntax], !bindings.isEmpty
        else 
        {
            return try body()
        }

        var scope:[String: [ExprSyntax]] = [:]
        for binding:PatternBindingSyntax in bindings.joined() 
        {
            guard let pattern:IdentifierPatternSyntax = 
                binding.pattern.as(IdentifierPatternSyntax.self)
            else 
            {
                fatalError("expected let binding")
            }
            guard   let clause:InitializerClauseSyntax = binding.initializer, 
                    let array:ArrayExprSyntax = clause.value.as(ArrayExprSyntax.self)
            else 
            {
                fatalError("expected array literal")
            }
            
            scope[pattern.identifier.text] = array.elements.map { $0.expression.withoutTrivia() }
        }
            self.scope.append(scope)
        defer 
        {
            self.scope.removeLast()
        }
        return try body()
    }

    final override 
    func visit(_ list:CodeBlockItemListSyntax) -> Syntax
    {
        var list:CodeBlockItemListSyntax = list 
        let bindings:[PatternBindingListSyntax] = list.remove 
        {
            $0.item.as(VariableDeclSyntax.self).flatMap { $0.matrices() }
        }
        return self.with(scope: bindings)
        {
            // expand nested blocks *before* expanding outer block 
            let list:Syntax = super.visit(list)
            guard let list:CodeBlockItemListSyntax = list.as(CodeBlockItemListSyntax.self) 
            else 
            {
                return list 
            }
            var elements:[CodeBlockItemSyntax] = []
                elements.reserveCapacity(list.count)
            for element:CodeBlockItemSyntax in list 
            { 
                guard let declaration:DeclSyntax = element.item.as(DeclSyntax.self), 
                        let expanded:[DeclSyntax] = self.expand(declaration)
                else 
                {
                    elements.append(element)
                    continue 
                }
                for element:DeclSyntax in expanded 
                {
                    elements.append(.init(item: Syntax.init(element), 
                        semicolon: nil, errorTokens: nil))
                }
            }
            return .init(CodeBlockItemListSyntax.init(elements))
        }
    }
    final override 
    func visit(_ list:MemberDeclListSyntax) -> Syntax
    {
        var list:MemberDeclListSyntax = list 
        let bindings:[PatternBindingListSyntax]? = list.remove 
        {
            $0.decl.as(VariableDeclSyntax.self).flatMap { $0.matrices() }
        }
        return self.with(scope: bindings)
        {
            // expand nested blocks *before* expanding outer block 
            let list:Syntax = super.visit(list)
            guard let list:MemberDeclListSyntax = list.as(MemberDeclListSyntax.self) 
            else 
            {
                return list 
            }
            var elements:[MemberDeclListItemSyntax] = []
                elements.reserveCapacity(list.count)
            for element:MemberDeclListItemSyntax in list 
            { 
                guard let expanded:[DeclSyntax] = self.expand(element.decl)
                else 
                {
                    elements.append(element)
                    continue 
                }
                for element:DeclSyntax in expanded 
                {
                    elements.append(.init(decl: element, semicolon: nil))
                }
            }
            return .init(MemberDeclListSyntax.init(elements))
        }
    }
}