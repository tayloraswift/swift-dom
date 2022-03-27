import Resource

extension Resource 
{
    @inlinable public static 
    func xml<Domain, ID>(_ document:Document.Dynamic<Domain, ID>, of type:Text, version:Resource.Version?) -> Self
        where Domain:DocumentDomain
    {
        var bytes:[UInt8] = .init("<?xml version=\"1.0\" encoding=\"UTF-8\"?>".utf8)
        var ignored:[(id:ID, index:Int)] = []
        
        document.rendered(into: &bytes, anchors: &ignored)
        
        return .bytes(bytes, type: type, version: version)
    }
}
