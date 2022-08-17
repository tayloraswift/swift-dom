import SwiftSyntax

protocol MatrixElement:DeclSyntaxProtocol 
{
    var attributes:AttributeListSyntax? { get set }
}
extension AssociatedtypeDeclSyntax:MatrixElement {}
extension ClassDeclSyntax:MatrixElement {}
extension EnumCaseDeclSyntax:MatrixElement {}
extension EnumDeclSyntax:MatrixElement {}
extension ExtensionDeclSyntax:MatrixElement {}
extension FunctionDeclSyntax:MatrixElement {}
extension ImportDeclSyntax:MatrixElement {}
extension InitializerDeclSyntax:MatrixElement {}
extension OperatorDeclSyntax:MatrixElement {}
extension PrecedenceGroupDeclSyntax:MatrixElement {}
extension ProtocolDeclSyntax:MatrixElement {}
extension StructDeclSyntax:MatrixElement {}
extension SubscriptDeclSyntax:MatrixElement {}
extension TypealiasDeclSyntax:MatrixElement {}
extension VariableDeclSyntax:MatrixElement {}

extension MatrixElement 
{
    private 
    func expand(loops:ArraySlice<Loop>, substitutions:[[String: ExprSyntax]]) 
        throws -> [DeclSyntax]
    {
        if let loop:Loop = loops.first 
        {
            var instances:[DeclSyntax] = []
            for iteration:[String: ExprSyntax] in loop 
            {
                instances.append(contentsOf: try self.expand(loops: loops.dropFirst(), 
                    substitutions: substitutions + [iteration]))
            }
            return instances
        }
        else 
        {
            let instantiator:Instantiator = .init(substitutions)
            let declaration:DeclSyntax 
            switch self 
            {
            case let base as AssociatedtypeDeclSyntax:  declaration = instantiator.visit(base)
            case let base as ClassDeclSyntax:           declaration = instantiator.visit(base)
            case let base as EnumCaseDeclSyntax:        declaration = instantiator.visit(base)
            case let base as EnumDeclSyntax:            declaration = instantiator.visit(base)
            case let base as ExtensionDeclSyntax:       declaration = instantiator.visit(base)
            case let base as FunctionDeclSyntax:        declaration = instantiator.visit(base)
            case let base as ImportDeclSyntax:          declaration = instantiator.visit(base)
            case let base as InitializerDeclSyntax:     declaration = instantiator.visit(base)
            case let base as OperatorDeclSyntax:        declaration = instantiator.visit(base)
            case let base as PrecedenceGroupDeclSyntax: declaration = instantiator.visit(base)
            case let base as ProtocolDeclSyntax:        declaration = instantiator.visit(base)
            case let base as StructDeclSyntax:          declaration = instantiator.visit(base)
            case let base as SubscriptDeclSyntax:       declaration = instantiator.visit(base)
            case let base as TypealiasDeclSyntax:       declaration = instantiator.visit(base)
            case let base as VariableDeclSyntax:        declaration = instantiator.visit(base)
            default: 
                fatalError("unreachable")
            }
            if let error:any Error = instantiator.errors.first 
            {
                throw error
            }
            return [declaration]
        }
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
        var doccomment:Trivia? = nil
        for attribute:Syntax in attributes 
        {
            if let recognized:Recognized = try recognize(attribute) 
            {
                // if this would be the first attribute, save the leading trivia, 
                // as it may contain a doccomment!
                if  case nil = doccomment, kept.isEmpty, 
                    let trivia:Trivia = attribute.leadingTrivia
                {
                    doccomment = trivia
                }
                removed.append(recognized)
            }
            else if let saved:Trivia = doccomment
            {
                // this *discards* the attribute’s *own* leading trivia!
                // if we do not throw it away, the preceeding doccomment 
                // will be orphaned, which is even worse!
                kept.append(attribute.withLeadingTrivia(saved))
                doccomment = nil
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
        else
        {
            self.attributes = kept.isEmpty ? nil : .init(kept)
        }
        // need to check this again, in case there were no other attributes 
        // around to adopt the doccomment
        if let doccomment:Trivia
        {
            // this *discards* the declaration’s *own* leading trivia!
            // if we do not throw it away, the preceeding doccomment 
            // will be orphaned, which is even worse!
            self = self.withLeadingTrivia(doccomment)
        }
        return removed
    }
    func expand(scope:[[String: [ExprSyntax]]]) throws -> [DeclSyntax]
    {
        var template:Self = self 
        let loops:[Loop]? = try template.removeAttributes 
        {
            guard   let attribute:CustomAttributeSyntax = $0.as(CustomAttributeSyntax.self), 
                    case "matrix"? = attribute.simpleName
            else 
            {
                return nil 
            }
            guard let arguments:TupleExprElementListSyntax = attribute.argumentList
            else 
            {
                throw Factory.MatrixError.missingArguments
            }
            var zipper:[Loop.Thread] = []
            arguments:
            for argument:TupleExprElementSyntax in arguments 
            {
                guard case .identifier(let binding)? = argument.label?.tokenKind
                else 
                {
                    throw Factory.MatrixError.missingBinding
                }
                if      let literal:ArrayExprSyntax = 
                    argument.expression.as(ArrayExprSyntax.self)
                {
                    zipper.append(.init(binding: binding, 
                        basis: literal.elements.map { $0.expression.withoutTrivia() }))
                }
                else if let variable:IdentifierExprSyntax = 
                    argument.expression.as(IdentifierExprSyntax.self)
                {
                    let variable:String = variable.identifier.text
                    for scope:[String: [ExprSyntax]] in scope.reversed() 
                    {
                        if let basis:[ExprSyntax] = scope[variable]
                        {
                            zipper.append(.init(binding: binding, basis: basis))
                            continue arguments  
                        }
                    }
                    throw Factory.MatrixError.undefinedBasis(variable)
                }
                else 
                {
                    throw Factory.MatrixError.invalidBasis(for: binding)
                }
            }
            return .init(zipper)
        }
        if let loops:[Loop]
        {
            return try template.expand(loops: loops[...], substitutions: [])
        }
        else 
        {
            return [.init(self)]
        }
    }
}