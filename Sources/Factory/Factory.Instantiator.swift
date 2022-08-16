import SwiftSyntax 

extension Factory 
{
    final 
    class Instantiator:SyntaxRewriter 
    {
        let substitutions:[[String: ExprSyntax]] 

        private final 
        func lookup(_ identifier:String) -> ExprSyntax? 
        {
            for substitutions:[String: ExprSyntax] in self.substitutions.reversed() 
            {
                if let expression:ExprSyntax = substitutions[identifier]
                {
                    return expression 
                }
            }
            return nil 
        }

        init(_ substitutions:[[String: ExprSyntax]])
        {
            self.substitutions = substitutions
            super.init()
        }

        final override 
        func visit(_ expression:IdentifierExprSyntax) -> ExprSyntax
        {
            if  case .identifier(let identifier) = expression.identifier.tokenKind, 
                let substitution:ExprSyntax = self.lookup(identifier)
            {
                // preserve the original trivia
                return substitution 
                    .withLeadingTrivia(expression.identifier.leadingTrivia)
                    .withTrailingTrivia(expression.identifier.trailingTrivia)
            }
            else 
            {
                return super.visit(expression)
            }
        }
        final override 
        func visit(_ token:TokenSyntax) -> Syntax
        {
            if  case .identifier(let identifier) = token.tokenKind, 
                let substitution:ExprSyntax = self.lookup(identifier)
            {
                guard let substitution:IdentifierExprSyntax = substitution.as(IdentifierExprSyntax.self)
                else 
                {
                    fatalError("arbitrary token may only be replaced with an identifier expression")
                }
                // preserve the original trivia
                return .init(token.withKind(substitution.identifier.tokenKind))
            }
            else 
            {
                return super.visit(token)
            }
        }
    }
}