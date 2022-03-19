import StructuredDocument
import Resource

extension Resource.Text:HTMLAttribute
{
    public 
    typealias Expression = Self 
    
    @inlinable public static 
    var name:String 
    {
        "type"
    }
}
extension Resource.Binary:HTMLAttribute
{
    public 
    typealias Expression = Self 
    
    @inlinable public static 
    var name:String 
    {
        "type"
    }
}
extension Resource 
{
    @available(*, deprecated)
    @inlinable public static 
    func html<ID>(_ document:Document.Dynamic<HTML, ID>, version:Resource.Version?) -> Self
    {
        .text("<!DOCTYPE html>\(document.rendered)", type: .html, version: version)
    }
    @inlinable public static 
    func html<S>(utf8:S, version:Resource.Version?) -> Self
        where S:Sequence, S.Element == UInt8
    {
        // '<!DOCTYPE html>'
        var bytes:[UInt8] = [0x3c, 0x21, 0x44, 0x4f, 0x43, 0x54, 0x59, 0x50, 0x45, 0x20, 0x68, 0x74, 0x6d, 0x6c, 0x3e]
            bytes.append(contentsOf: utf8)
        return .bytes(bytes, type: .html, version: version)
    }
}
