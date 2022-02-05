import StructuredDocument

extension Document 
{
    public 
    enum HTML:DocumentDomain
    {
        // these means ABI breakage is inevitable, but this is necessary for performance
        @frozen public 
        enum Container:String, ContainerDomain
        {
            public 
            typealias Domain = HTML 
            
            case html 
            case head 
            case body 
            
            case title 
            
            case a
            case address
            case article 
            case aside 
            case code 
            case dl 
            case dt
            case dd 
            case div
            case em
            case h1
            case h2
            case h3
            case header
            case li
            case main 
            case nav 
            case ol 
            case p
            case pre 
            case section
            case span
            case script 
            case time
            case ul 
            
            @inlinable public static 
            var root:Self { .html }
        }
        @frozen public 
        enum Leaf:String, LeafDomain
        {
            public 
            typealias Domain = HTML 
            
            case meta 
            case link 
            case wbr 
            case br 
            
            @inlinable public
            var void:Bool 
            {
                true 
            }
        }
    }
}

// attributes 
public 
protocol HTMLAttribute:DocumentAttribute
{
}
extension Document.AttributesBuilder where Domain == Document.HTML
{
    //  css classes can be written in brackets: 
    //  ```
    //  ["foo", "bar"]
    /// ```
    @inlinable public static 
    func buildExpression(_ classes:[String]) -> [Element]
    {
        Self.buildExpression((classes.joined(separator: " "), as: Document.HTML.Class.self))
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
extension Document.HTML 
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
}

extension Document.HTML 
{
    @resultBuilder 
    public 
    enum MetadataBuilder:DocumentArrayBuilder 
    {
        public 
        typealias Element = (key:String, value:String)
    }
    @inlinable public static 
    func metadata<ID>(id:ID? = nil, charset _:Unicode.UTF8.Type) -> Document.Element<Self, ID>
    {
        Leaf.meta(id: id){ Charset.utf8 }
    }
    static 
    func metadata<ID>(of _:ID.Type = ID.self, 
        @MetadataBuilder _ items:() -> [(key:String, value:String)]) -> [Document.Element<Self, ID>]
        where ID:DocumentID
    {
        items().map 
        {
            (item:(key:String, value:String)) in 
            Leaf.meta
            {
                (item.key,   as: Name.self)
                (item.value, as: Content.self)
            }
        }
    }
    
    static 
    func item<ID>(id:ID? = nil, 
        @Document.InlineBuilder<Self, ID> _ paragraphs:() -> [[Document.Element<Self, ID>]]) 
        -> Document.Element<Self, ID>
        where ID:DocumentID
    {
        Container.li(id: id) 
        {
            paragraphs().map 
            {
                .container(.p, content: $0)
            }
        }
    }
    static 
    func span<ID>(_ string:String, id:ID? = nil, 
        @Document.AttributesBuilder<Self> attributes:() -> [String: String] = { [:] }) 
        -> Document.Element<Self, ID> 
        where ID:DocumentID
    {
        .container(.span, id: id, attributes: attributes(), content: [.text(escaping: string)])
    }
    // all inline blocks will get consolidated into one single block
    static 
    func span<ID>(id:ID? = nil, 
        @Document.AttributesBuilder<Self> attributes:() -> [String: String] = { [:] }, 
        @Document.InlineBuilder<Self, ID> content inline:() -> [[Document.Element<Self, ID>]]) 
        -> Document.Element<Self, ID> 
        where ID:DocumentID
    {
        .container(.span, id: id, attributes: attributes(), content: .init(inline().joined()))
    }
    static 
    func link<ID>(_ string:String, to url:String, id:ID? = nil, internal:Bool = false, 
        @Document.AttributesBuilder<Self> attributes:() -> [String: String] = { [:] }) 
        -> Document.Element<Self, ID> 
        where ID:DocumentID
    {
        var attributes:[String: String] = attributes()
            attributes[Href.name]       = url
        if !`internal` 
        {
            attributes[Target.name]     = Target._blank.rawValue
        }
        return .container(.a, id: id, attributes: attributes, content: [.text(escaping: string)])
    }
    // all inline blocks will get consolidated into one single block
    static 
    func link<ID>(to url:String, id:ID? = nil, internal:Bool = false, 
        @Document.AttributesBuilder<Self> attributes:() -> [String: String] = { [:] }, 
        @Document.InlineBuilder<Self, ID> content inline:() -> [[Document.Element<Self, ID>]]) 
        -> Document.Element<Self, ID> 
        where ID:DocumentID
    {
        var attributes:[String: String] = attributes()
            attributes[Href.name]       = url
        if !`internal` 
        {
            attributes[Target.name]     = Target._blank.rawValue
        }
        return .container(.a, id: id, attributes: attributes, content: .init(inline().joined()))
    }
}
