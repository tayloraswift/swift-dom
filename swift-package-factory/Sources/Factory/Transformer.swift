import SwiftSyntax 

extension CustomAttributeSyntax 
{
    var simpleName:String? 
    {
        if  case .identifier(let name)? = 
            self.attributeName.as(SimpleTypeIdentifierSyntax.self)?.name.tokenKind
        {
            return name 
        }
        else 
        {
            return nil
        }
    }
}

extension VariableDeclSyntax 
{
    func bases() -> PatternBindingListSyntax? 
    {
        var scratch:Self = self 
        let basis:[Void]? = scratch.removeAttributes
        {
            if  let attribute:CustomAttributeSyntax = $0.as(CustomAttributeSyntax.self), 
                case "basis"? = attribute.simpleName
            {
                return ()
            }
            else 
            {
                return nil
            }
        }
        if case _? = basis 
        {
            return self.bindings
        }
        else 
        {
            return nil
        }
    }
}

final 
class Transformer:SyntaxRewriter 
{
    var scope:[[String: [ExprSyntax]]] 
    var errors:[any Error]

    override 
    init() 
    {
        self.scope = []
        self.errors = []
        super.init() 
    }

    final private 
    func expand(_ declaration:DeclSyntax) throws -> [DeclSyntax]?
    {
        if  let expandable:any MatrixElement = 
            declaration.asProtocol(DeclSyntaxProtocol.self) as? MatrixElement
        {
            return try expandable.expand(scope: self.scope)
        }
        else 
        {
            return nil
        }
    }

    final private 
    func with<T>(scope bindings:[PatternBindingListSyntax]?, _ body:() throws -> T) throws -> T 
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
                throw Factory.BasisError.expectedInitializationExpression
            }
            guard   let clause:InitializerClauseSyntax = binding.initializer, 
                    let array:ArrayExprSyntax = clause.value.as(ArrayExprSyntax.self)
            else 
            {
                throw Factory.BasisError.expectedArrayLiteral
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
            $0.item.as(VariableDeclSyntax.self).flatMap { $0.bases() }
        }
        do 
        {
            return try self.with(scope: bindings)
            {
                var elements:[CodeBlockItemSyntax] = []
                    elements.reserveCapacity(list.count)
                for element:CodeBlockItemSyntax in list 
                { 
                    guard let declaration:DeclSyntax = element.item.as(DeclSyntax.self), 
                            let expanded:[DeclSyntax] = try self.expand(declaration)
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
                return .init(super.visit(CodeBlockItemListSyntax.init(elements)))
            }
        }
        catch let error 
        {
            self.errors.append(error)
            return .init(list)
        }
    }
    final override 
    func visit(_ list:MemberDeclListSyntax) -> Syntax
    {
        var list:MemberDeclListSyntax = list 
        let bindings:[PatternBindingListSyntax]? = list.remove 
        {
            $0.decl.as(VariableDeclSyntax.self).flatMap { $0.bases() }
        }
        do 
        {
            return try self.with(scope: bindings)
            {
                var elements:[MemberDeclListItemSyntax] = []
                    elements.reserveCapacity(list.count)
                for element:MemberDeclListItemSyntax in list 
                { 
                    guard let expanded:[DeclSyntax] = try self.expand(element.decl)
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
                return .init(super.visit(MemberDeclListSyntax.init(elements)))
            }
        }
        catch let error 
        {
            self.errors.append(error)
            return .init(list)
        }
    }
}