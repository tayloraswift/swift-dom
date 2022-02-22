import Resource

extension Resource 
{
    @inlinable public static 
    func xml<Domain, ID>(_ document:Document.Dynamic<Domain, ID>, of subtype:Text, version:Resource.Version?) -> Self
        where Domain:DocumentDomain, ID:DocumentID
    {
        .text("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\(document.rendered)", subtype: subtype, version: version)
    }
}
