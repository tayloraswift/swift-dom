import SwiftSyntaxParser 
import SwiftSyntax 

public 
enum Factory 
{
    public static 
    func transform(syntax source:SourceFileSyntax) -> Syntax 
    {
        Transformer.init().visit(source)
    }
    public static 
    func transform(source:String, filenameForDiagnostics:String = "") throws -> String
    {
        let source:SourceFileSyntax = try SyntaxParser.parse(source: source, 
            filenameForDiagnostics: filenameForDiagnostics)
        return Self.transform(syntax: source).description
    }
}