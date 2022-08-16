import SwiftSyntax

protocol MatrixElement:DeclSyntaxProtocol 
{
    var attributes:AttributeListSyntax? { get set }
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
}
extension AssociatedtypeDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ClassDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension EnumCaseDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension EnumDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ExtensionDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension FunctionDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ImportDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension InitializerDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension OperatorDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension PrecedenceGroupDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ProtocolDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension StructDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension SubscriptDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension TypealiasDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension VariableDeclSyntax:MatrixElement 
{
    func transform(_ rewriter:Factory.Instantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}

extension MatrixElement 
{
    private 
    func expand(loops:ArraySlice<Factory.Loop>, substitutions:[[String: ExprSyntax]]) -> [DeclSyntax]
    {
        guard let loop:Factory.Loop = loops.first 
        else 
        {
            return [self.transform(Factory.Instantiator.init(substitutions))]
        }
        var instances:[DeclSyntax] = []
        for iteration:[String: ExprSyntax] in loop 
        {
            instances.append(contentsOf: self.expand(loops: loops.dropFirst(), 
                substitutions: substitutions + [iteration]))
        }
        return instances
    }
    mutating 
    func removeAttributes<Recognized>(where recognize:(Syntax) throws -> Recognized?) 
        rethrows -> [Recognized]?
    {
        guard let attributes:AttributeListSyntax = self.attributes 
        else 
        {
            return nil 
        }
        var removed:[Recognized] = []
        // if we delete a node, its leading trivia should coalesce with the 
        // leading trivia of the next node 
        var kept:[Syntax] = []
        var trivia:[TriviaPiece] = []
        for attribute:Syntax in attributes 
        {
            if let recognized:Recognized = try recognize(attribute) 
            {
                if let residue:Trivia = attribute.leadingTrivia 
                {
                    trivia.append(contentsOf: residue)
                }
                removed.append(recognized)
            }
            else if !trivia.isEmpty 
            {
                kept.append(attribute.withLeadingTrivia(.init(
                    pieces: trivia + (attribute.leadingTrivia ?? []))))
                trivia.removeAll()
            }
            else 
            {
                kept.append(attribute)
            }
        }
        if removed.isEmpty 
        {
            return nil 
        }
        else if kept.isEmpty
        {
            self.attributes = nil 
            if !trivia.isEmpty 
            {
                self = self.withLeadingTrivia(.init(
                    pieces: trivia + (self.leadingTrivia ?? [])))
            }
        }
        else 
        {
            if !trivia.isEmpty 
            {
                let lastAttribute:Syntax = kept[kept.endIndex - 1]
                kept[kept.endIndex - 1] = lastAttribute.withLeadingTrivia(.init(
                    pieces: (lastAttribute.leadingTrivia ?? []) + trivia))
            }
            self.attributes = SyntaxFactory.makeAttributeList(kept)
        }
        return removed
    }
    func expand(scope:[[String: [ExprSyntax]]]) -> [DeclSyntax]
    {
        var template:Self = self 
        let loops:[Factory.Loop]? = template.removeAttributes 
        {
            guard   let attribute:CustomAttributeSyntax = $0.as(CustomAttributeSyntax.self), 
                    case "template"? = attribute.simpleName
            else 
            {
                return nil 
            }
            guard let arguments:TupleExprElementListSyntax = attribute.argumentList
            else 
            {
                fatalError("@template(identifiers:in:) requires arguments")
            }
            var zipper:[Factory.Loop.Thread] = []
            arguments:
            for argument:TupleExprElementSyntax in arguments 
            {
                guard case .identifier(let binding)? = argument.label?.tokenKind
                else 
                {
                    fatalError("@template loop requires a binding")
                }
                if      let literal:ArrayExprSyntax = 
                    argument.expression.as(ArrayExprSyntax.self)
                {
                    zipper.append(.init(binding: binding, 
                        matrix: literal.elements.map { $0.expression.withoutTrivia() }))
                }
                else if let variable:IdentifierExprSyntax = 
                    argument.expression.as(IdentifierExprSyntax.self)
                {
                    let variable:String = variable.identifier.text
                    for scope:[String: [ExprSyntax]] in scope.reversed() 
                    {
                        if let matrix:[ExprSyntax] = scope[variable]
                        {
                            zipper.append(.init(binding: binding, matrix: matrix))
                            continue arguments  
                        }
                    }
                    fatalError("@template matrix '\(variable)' is not defined in this lexical scope")
                }
                else 
                {
                    fatalError("@template matrix must be an array literal or a @matrix binding")
                }
            }
            return .init(zipper)
        }
        if let loops:[Factory.Loop]
        {
            return template.expand(loops: loops[...], substitutions: [])
        }
        else 
        {
            return [.init(self)]
        }
    }
}