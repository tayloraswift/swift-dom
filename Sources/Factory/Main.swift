import SystemExtras 

import SwiftSyntax 
import SwiftSyntaxParser 

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

extension AttributeListSyntax?
{
    // this is going to be slow no matter what, 
    // see https://github.com/apple/swift-syntax/issues/592
    mutating 
    func strip<T>(_ strip:(Wrapped.Element) throws -> T?) rethrows -> [T]?
    {
        var stripped:[T] = []
        var current:Int = 0
        while let list:Wrapped = self
        {
            let index:Wrapped.Index = list.index(list.startIndex, offsetBy: current)
            guard index < list.endIndex 
            else 
            {
                break
            }
            if let value:T = try strip(list[index])
            {
                stripped.append(value)
                self = list.count == 1 ? nil : list.removing(childAt: current)
            }
            else 
            {
                current += 1
            }
        }
        return stripped.isEmpty ? nil : stripped
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

@main 
enum Main 
{
    public static 
    func main() throws
    {
        for path:FilePath in CommandLine.arguments.dropFirst().map(FilePath.init(_:))
        {
            print("applying templates for '\(path)'")
            let input:String = try path.read()
            let source:SourceFileSyntax = try SyntaxParser.parse(source: input, 
                filenameForDiagnostics: path.string)

            let factory:Factory = .init()
            let output:Syntax = factory.visit(source)
            print(output)
        }
    }
}