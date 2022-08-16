import SwiftSyntax

protocol LexicalScope:SyntaxCollection, BidirectionalCollection 
{
    init(_:[Element])
}
extension CodeBlockItemListSyntax:LexicalScope {} 
extension MemberDeclListSyntax:LexicalScope {} 

extension LexicalScope
{
    mutating 
    func remove<Recognized>(where recognize:(Element) throws -> Recognized?) 
        rethrows -> [Recognized]
    {
        var removed:[Recognized] = []
        var kept:[Element] = []
        for element:Element in self 
        {
            if let recognized:Recognized = try recognize(element)
            {
                removed.append(recognized)
            }
            else 
            {
                kept.append(element)
            }
        }
        if !removed.isEmpty 
        {
            self = .init(kept)
        }
        return removed 
    }
}