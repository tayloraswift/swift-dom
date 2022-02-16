@frozen public 
enum Resource 
{
    @frozen public 
    enum Text:String, RawRepresentable, CustomStringConvertible
    {
        case plain          = "text/plain"
        case html           = "text/html"
        case css            = "text/css"
        case javascript     = "text/javascript"
        case json           = "application/json"
        case rss            = "application/rss+xml"
        case svg            = "image/svg+xml"
        
        public 
        var description:String 
        {
            self.rawValue
        }
    }
    @frozen public 
    enum Binary:String, RawRepresentable, CustomStringConvertible
    {
        case otf    = "font/otf"
        case png    = "image/png"
        case icon   = "image/x-icon"
        
        public 
        var description:String 
        {
            self.rawValue
        }
    }
    
    case text(String,    subtype:Text = .plain)
    case binary([UInt8], subtype:Binary) 
    
    @inlinable public static 
    func xml<Domain, ID>(_ document:Document.Dynamic<Domain, ID>, of subtype:Text) -> Self
        where Domain:DocumentDomain, ID:DocumentID
    {
        .text("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\(document.rendered)", subtype: subtype)
    }
}
