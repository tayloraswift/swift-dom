import Resource

extension Resource 
{
    @inlinable public static 
    func xml<Domain, ID>(_ document:Document.Dynamic<Domain, ID>, of type:Text, version:Resource.Version?) -> Self
        where Domain:DocumentDomain
    {
        .text("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\(document.rendered)", type: type, version: version)
    }
}
