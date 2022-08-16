import SwiftSyntax

protocol LexicalScope:SyntaxCollection, BidirectionalCollection 
{
    func removing(childAt offset:Int) -> Self 
}
extension CodeBlockItemListSyntax:LexicalScope {} 
extension MemberDeclListSyntax:LexicalScope {} 

extension LexicalScope
{
    // this is going to be slow no matter what, 
    // see https://github.com/apple/swift-syntax/issues/592
    mutating 
    func strip<T>(_ strip:(Element) throws -> T?) rethrows -> [T]?
    {
        var stripped:[T] = []
        var current:Int = 0
        var index:Index = self.startIndex
        while index < self.endIndex
        {
            if let value:T = try strip(self[index])
            {
                stripped.append(value)
                self = self.removing(childAt: current)
            }
            else 
            {
                current += 1
            }
            index = self.index(self.startIndex, offsetBy: current)
        }
        return stripped.isEmpty ? nil : stripped
    }
}