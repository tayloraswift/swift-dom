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
    @inlinable public static 
    func html<ID>(_ document:Document.Dynamic<Document.HTML, ID>, version:Resource.Version?) -> Self
        where ID:DocumentID
    {
        .text("<!DOCTYPE html>\(document.rendered)", subtype: .html, version: version)
    }
}
