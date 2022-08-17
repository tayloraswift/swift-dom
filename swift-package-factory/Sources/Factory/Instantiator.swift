import SwiftSyntax 

final 
class Instantiator:SyntaxRewriter 
{
    let substitutions:[[String: ExprSyntax]] 
    var errors:[any Error]

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
        self.errors = []
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
        let token:TokenSyntax = token
            .withLeadingTrivia(self.visit(trivia: token.leadingTrivia))
            .withTrailingTrivia(self.visit(trivia: token.trailingTrivia))
        if  case .identifier(let identifier) = token.tokenKind, 
            let substitution:ExprSyntax = self.lookup(identifier)
        {
            guard let substitution:IdentifierExprSyntax = substitution.as(IdentifierExprSyntax.self)
            else 
            {
                // API cannot throw...
                let error:Factory.SubstitutionError = .notAnIdentifier(substitution.description, 
                    replacing: identifier)
                self.errors.append(error)
                return .init(token)
            }
            // preserve the original trivia
            return .init(token.withKind(substitution.identifier.tokenKind))
        }
        else 
        {
            return super.visit(token)
        }
    }

    private final 
    func visit(trivia:Trivia) -> Trivia 
    {
        .init(pieces: trivia.map 
        {
            switch $0 
            {
            case .docLineComment(let comment): 
                return .docLineComment(self.visit(docComment: comment))
            case .docBlockComment(let comment): 
                return .docBlockComment(self.visit(docComment: comment))
            case let piece: 
                return piece
            }
        })
    }
    private final 
    func visit(docComment string:String) -> String 
    {
        var substitutions:[(range:Range<String.Index>, substitution:String)] = []
        // look for '\(' and ')' tokens. we are only interested 
        // in the innermost pairings
        var index:String.Index = string.startIndex 
        var recorded:(exterior:String.Index, interior:String.Index)? = nil
        while index < string.endIndex 
        {
            switch (recorded, string[index])
            {
            case (_, "\\"):
                let start:String.Index = index 
                string.formIndex(after: &index) 
                if index < string.endIndex, string[index] == "("
                {
                    string.formIndex(after: &index) 
                    recorded = (start, index)  
                }
            case (let start?, ")"):
                recorded = nil
                if  let substitution:ExprSyntax = 
                    self.lookup(.init(string[start.interior ..< index]))
                {
                    string.formIndex(after: &index) 
                    substitutions.append((start.exterior ..< index, substitution.description))
                }
                else 
                {
                    fallthrough 
                }
            default: 
                string.formIndex(after: &index) 
            }
        }
        return string.replacingSubranges(substitutions)
    }
}
extension String 
{
    func replacingSubranges(_ subranges:[(range:Range<String.Index>, substitution:String)]) -> Self 
    {
        // fast path 
        if subranges.isEmpty 
        {
            return self 
        }
        var spliced:Self = ""
        var current:String.Index = self.startIndex 
        for (range, substitution):(Range<String.Index>, String) in subranges 
        {
            spliced += self[current ..< range.lowerBound]
            spliced += substitution
            current = range.upperBound
        }
        if current < self.endIndex 
        {
            spliced += self[current...]
        }
        return spliced
    }
}