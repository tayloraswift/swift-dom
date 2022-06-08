import Resource

extension Resource 
{
    @inlinable public static 
    func xml<Domain, Anchor>(_ document:DOM.Root<Domain, Anchor>, 
        of type:Text, 
        tag:Resource.Tag?) 
        -> Self
        where Domain:DocumentDomain
    {
        var bytes:[UInt8] = .init("<?xml version=\"1.0\" encoding=\"UTF-8\"?>".utf8)
        var ignored:[(key:Anchor, index:Int)] = []
        
        document.rendered(into: &bytes, anchors: &ignored)
        
        return .utf8(encoded: bytes, type: type, tag: tag)
    }
}
