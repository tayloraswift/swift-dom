import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct Main:CompilerPlugin
{
    let providingMacros:[any Macro.Type] = [GenerateDynamicMemberFactory.self]
}
