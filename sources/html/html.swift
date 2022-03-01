import StructuredDocument

public 
enum HTML:DocumentDomain
{    
    // these means ABI breakage is inevitable, but this is necessary for performance
    @frozen public 
    enum Container:String, ContainerDomain, Sendable
    {
        case html 
        case head 
        case body 
        
        case title 
        
        case a
        case address
        case article 
        case aside 
        case blockquote 
        case code 
        case dl 
        case dt
        case dd 
        case div
        case em
        case form
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
        case header
        case li
        case main 
        case nav 
        case ol 
        case p
        case pre 
        case q
        case s
        case section
        case span
        case script 
        case strong
        case table
        case tbody
        case thead
        case td
        case th
        case tr
        case time
        case ul 
        
        @inlinable public static 
        var root:Self { .html }
    }
    @frozen public 
    enum Leaf:String, LeafDomain, Sendable
    {
        case br 
        case hr
        case img
        case input
        case link 
        case meta 
        case wbr 
        
        @inlinable public
        var void:Bool 
        {
            true 
        }
    }
}

public
typealias _HTML = HTML 
extension Document 
{
    @available(*, deprecated, renamed: "HTML")
    public 
    typealias HTML = _HTML
}

// attributes 
public 
protocol HTMLAttribute:DocumentAttribute
{
}
extension DocumentElement.Attributes where Domain == HTML 
{
    //  css classes can be written in brackets: 
    //  ```
    //  ["foo", "bar"]
    /// ```
    @inlinable public static 
    func buildExpression(_ classes:[String]) -> [Element]
    {
        Self.buildExpression((classes.joined(separator: " "), as: HTML.Class.self))
    }
    // if an attribute is its own expression type, infer the key-value pair 
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:Attribute) -> [Element] 
        where Attribute:HTMLAttribute, Attribute.Expression == Attribute 
    {
        Self.buildExpression(Attribute.item(from: expression))
    }
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:(Attribute.Expression, as:Attribute.Type)) -> [Element] 
        where Attribute:HTMLAttribute
    {
        Self.buildExpression(Attribute.item(from: expression.0))
    }
}
extension HTML 
{
    public 
    enum Async:HTMLAttribute
    {
        public 
        typealias Expression = Bool 
        @inlinable public 
        static var name:String { "async" }
    }
    @frozen public 
    enum Autocomplete:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public 
        static var name:String { "autocomplete" }
        
        case off = "off"
    }
    @frozen public 
    enum Autofocus:HTMLAttribute
    {
        public 
        typealias Expression = Bool 
        @inlinable public 
        static var name:String { "autofocus" }
    }
    @frozen public 
    enum Charset:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public 
        static var name:String { "charset" }
        
        case utf8 = "UTF-8"
    }
    public 
    enum Class:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "class" }
    }
    public 
    enum Content:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "content" }
    }
    @frozen public 
    enum Crossorigin:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public 
        static var name:String { "crossorigin" }
        
        case anonymous = "anonymous"
    }
    public 
    enum Defer:HTMLAttribute
    {
        public 
        typealias Expression = Bool 
        @inlinable public 
        static var name:String { "defer" }
    }
    public 
    enum Href:HTMLAttribute
    {
        @inlinable public
        static var name:String { "href" }
    }
    public 
    enum Src:HTMLAttribute
    {
        @inlinable public
        static var name:String { "src" }
    }
    @frozen public 
    enum Lang:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public
        static var name:String { "lang" }
        
        case en = "en"
    }
    public 
    enum Name:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "name" }
    }
    public 
    enum Onclick:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "onclick" }
    }
    public 
    enum Onmouseup:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "onmouseup" }
    }
    public 
    enum Onmousedown:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "onmousedown" }
    }
    public 
    enum Placeholder:HTMLAttribute 
    {
        @inlinable public
        static var name:String { "placeholder" }
    }
    @frozen public 
    enum Rel:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public
        static var name:String { "rel" }
        
        case stylesheet = "stylesheet"
        case preconnect = "preconnect"
        case icon       = "icon"
        case nofollow   = "nofollow noopener"
        case alternate  = "alternate"
    }
    @frozen public 
    enum Role:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public
        static var name:String { "role" }
        
        case search = "search"
    }
    @frozen public 
    enum Target:RawRepresentable, HTMLAttribute 
    {
        public 
        typealias Expression = Self 
        @inlinable public
        static var name:String { "target" }
        
        case _blank
        case _self
        case _parent
        case _top
        case frame(String)
        
        @inlinable public
        init(rawValue:String)
        {
            switch rawValue
            {
            case "_blank":  self = ._blank
            case "_self":   self = ._self
            case "_parent": self = ._parent
            case "_top":    self = ._top
            case let frame: self = .frame(frame)
            }
        }
        @inlinable public
        var rawValue:String 
        {
            switch self 
            {
            case ._blank:   return "_blank"
            case ._self:    return "_self"
            case ._parent:  return "_parent"
            case ._top:     return "_top"
            case .frame(let frame): return frame
            }
        }
    }
    @frozen public 
    enum InputType:String, HTMLAttribute
    {
        public 
        typealias Expression = Self 
        @inlinable public
        static var name:String { "type" }
        
        case text   = "text"
        case search = "search"
    }
}

extension HTML 
{
    @resultBuilder 
    public 
    enum MetadataBuilder:DocumentArrayBuilder 
    {
        public 
        typealias Element = (key:String, value:String)
    }
}
// typechecker requires this
extension HTML.Element where Domain == HTML
{
    @inlinable public static 
    func metadata(id:ID? = nil, charset _:Unicode.UTF8.Type) -> Self
    {
        Self[.meta, id: id]{ Domain.Charset.utf8 }
    }
    @inlinable public static  
    func metadata(of _:ID.Type = ID.self, 
        @HTML.MetadataBuilder _ items:() -> [(key:String, value:String)]) -> [Self]
    {
        items().map 
        {
            (item:(key:String, value:String)) in 
            Self[.meta]
            {
                (item.key,   as: Domain.Name.self)
                (item.value, as: Domain.Content.self)
            }
        }
    }
    
    @inlinable public static 
    func item(id:ID? = nil, @Prose _ paragraphs:() -> [[Self]]) 
        -> Self
    {
        Self[.li, id: id]
        {
            paragraphs().map 
            {
                Self.container(.p, content: $0)
            }
        }
    }
    @inlinable public static 
    func span(_ string:String, id:ID? = nil, @Attributes attributes:() -> [String: String] = { [:] }) 
        -> Self 
    {
        .container(.span, id: id, attributes: attributes(), content: [.text(escaping: string)])
    }
    // all inline blocks will get consolidated into one single block
    @inlinable public static 
    func span(id:ID? = nil, 
        @Attributes attributes:() -> [String: String] = { [:] }, 
        @Prose  content inline:() -> [[Self]]) 
        -> Self 
    {
        .container(.span, id: id, attributes: attributes(), content: .init(inline().joined()))
    }
    @inlinable public static 
    func link(_ string:String, to url:String, id:ID? = nil, internal:Bool = false, 
        @Attributes attributes:() -> [String: String] = { [:] }) 
        -> Self 
    {
        var attributes:[String: String]     = attributes()
            attributes[Domain.Href.name]    = url
        if !`internal` 
        {
            attributes[Domain.Target.name]  = Domain.Target._blank.rawValue
        }
        return .container(.a, id: id, attributes: attributes, content: [.text(escaping: string)])
    }
    // all inline blocks will get consolidated into one single block
    @inlinable public static 
    func link(to url:String, id:ID? = nil, internal:Bool = false, 
        @Attributes attributes:() -> [String: String] = { [:] }, 
        content inline:() -> Prose) 
        -> Self 
    {
        var attributes:[String: String]     = attributes()
            attributes[Domain.Href.name]    = url
        if !`internal` 
        {
            attributes[Domain.Target.name]  = Domain.Target._blank.rawValue
        }
        return .container(.a, id: id, attributes: attributes, content: inline().elements)
    }
    // all inline blocks will get consolidated into one single block
    @inlinable public static 
    func paragraph(id:ID? = nil, internal:Bool = false, 
        @Attributes attributes:() -> [String: String] = { [:] }, 
        content inline:() -> Prose) 
        -> Self
    {
        return .container(.p, id: id, attributes: attributes(), content: inline().elements)
    }
}
