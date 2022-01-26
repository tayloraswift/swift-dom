protocol _HTMLRoot:XML.Root where Domain == HTML
{
}
enum HTML:XML.Domain
{
    typealias Root              = _HTMLRoot
    
    struct Dynamic<ID>:Root where ID:XML.ID
    {
        let attributes:[String: String]
        let content:[XML.Element<HTML, ID>]
    }
    typealias Static = Dynamic<Never>
    
    enum Container:String, XML.Container  
    {
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
    }
    enum Leaf:String, XML.Leaf 
    {
        typealias Domain = HTML 
        
        case meta 
        case link 
        case wbr 
        case br 
        
        var void:Bool 
        {
            true 
        }
    }
}
extension HTML.Root 
{
    static 
    var type:HTML.Container 
    {
        .html 
    }
}

// attributes 
extension HTML 
{
    typealias Attribute         = _HTMLAttribute
    typealias URLAttribute      = _HTMLURLAttribute
    typealias BoolAttribute     = _HTMLBoolAttribute
    typealias EnumAttribute     = _HTMLEnumAttribute
}
protocol _HTMLAttribute:XML.Attribute
{
}
protocol _HTMLURLAttribute:HTML.Attribute
{
}
protocol _HTMLBoolAttribute:HTML.Attribute
    where Expression == Bool
{
}
extension HTML.BoolAttribute 
{
    static 
    func value(from expression:Expression) -> String
    {
        expression ? "true" : "false"
    }
}
protocol _HTMLEnumAttribute:HTML.Attribute, RawRepresentable
    where Expression == Self, RawValue == String 
{
}
extension XML.AttributesBuilder where Domain == HTML
{
    //  css classes can be written in brackets: 
    //  ```
    //  ["foo", "bar"]
    /// ```
    static 
    func buildExpression(_ classes:[String]) -> [Element]
    {
        Self.buildExpression((classes.joined(separator: " "), as: HTML.Class.self))
    }
    static 
    func buildExpression<Attribute>(_ expression:Attribute) -> [Element] 
        where Attribute:HTML.Attribute, Attribute.Expression == Attribute 
    {
        Self.buildExpression(Attribute.item(from: expression))
    }
    static 
    func buildExpression<Attribute>(_ expression:(Attribute.Expression, as:Attribute.Type)) -> [Element] 
        where Attribute:HTML.Attribute
    {
        Self.buildExpression(Attribute.item(from: expression.0))
    }
}
extension HTML 
{
    enum Async:BoolAttribute
    {
        static let name:String = "async"
    }
    enum Charset:String, EnumAttribute
    {
        static let name:String = "charset"
        case utf8 = "UTF-8"
    }
    enum Class:Attribute 
    {
        static let name:String = "class"
    }
    enum Content:Attribute 
    {
        static let name:String = "content"
    }
    enum Crossorigin:String, EnumAttribute
    {
        typealias Expression    = Self 
        static let name:String  = "crossorigin"
        
        case anonymous = "anonymous"
    }
    enum Href:URLAttribute
    {
        static 
        let name:String = "href"
    }
    enum Src:URLAttribute
    {
        static let name:String = "src"
    }
    enum Lang:String, EnumAttribute
    {
        static let name:String = "lang"
        case en = "en"
    }
    enum Name:Attribute 
    {
        static let name:String = "name"
    }
    enum Onclick:Attribute 
    {
        static let name:String = "onclick"
    }
    enum Onmouseup:Attribute 
    {
        static let name:String = "onmouseup"
    }
    enum Onmousedown:Attribute 
    {
        static let name:String = "onmousedown"
    }
    enum Rel:String, EnumAttribute
    {
        static let name:String = "rel"
        case stylesheet = "stylesheet"
        case preconnect = "preconnect"
        case icon       = "icon"
        case nofollow   = "nofollow noopener"
    }
    enum Target:EnumAttribute 
    {
        static let name:String = "target"
        
        case _blank
        case _self
        case _parent
        case _top
        case frame(String)
        
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

extension HTML 
{
    @resultBuilder 
    enum MetadataBuilder:ArrayBuilder 
    {
        typealias Element = (key:String, value:String)
    }
    static 
    func metadata<ID>(id:ID? = nil, charset _:Unicode.UTF8.Type) -> XML.Element<HTML, ID>
    {
        HTML.Leaf.meta(id: id)
        {
            Charset.utf8 
        }
    }
    static 
    func metadata<ID>(of _:ID.Type = ID.self, 
        @MetadataBuilder _ items:() -> [(key:String, value:String)]) -> [XML.Element<HTML, ID>]
        where ID:XML.ID
    {
        items().map 
        {
            (item:(key:String, value:String)) in 
            HTML.Leaf.meta
            {
                (item.key,   as: HTML.Name.self)
                (item.value, as: HTML.Content.self)
            }
        }
    }
    
    static 
    func item<ID>(id:ID? = nil, 
        @XML.InlineBuilder<HTML, ID> _ paragraphs:() -> [[XML.Element<HTML, ID>]]) 
        -> XML.Element<HTML, ID>
        where ID:XML.ID
    {
        HTML.Container.li(id: id) 
        {
            paragraphs().map 
            {
                .container(.p, content: $0)
            }
        }
    }
    static 
    func span<ID>(_ string:String, id:ID? = nil, 
        @XML.AttributesBuilder<HTML> attributes:() -> [String: String] = { [:] }) 
        -> XML.Element<HTML, ID> 
        where ID:XML.ID
    {
        .container(.span, id: id, attributes: attributes(), content: [.text(escaping: string)])
    }
    // all inline blocks will get consolidated into one single block
    static 
    func span<ID>(id:ID? = nil, 
        @XML.AttributesBuilder<HTML> attributes:() -> [String: String] = { [:] }, 
        @XML.InlineBuilder<HTML, ID> content inline:() -> [[XML.Element<HTML, ID>]]) 
        -> XML.Element<HTML, ID> 
        where ID:XML.ID
    {
        .container(.span, id: id, attributes: attributes(), content: .init(inline().joined()))
    }
    static 
    func link<ID>(_ string:String, to url:String, id:ID? = nil, internal:Bool = false, 
        @XML.AttributesBuilder<HTML> attributes:() -> [String: String] = { [:] }) 
        -> XML.Element<HTML, ID> 
        where ID:XML.ID
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
        @XML.AttributesBuilder<HTML> attributes:() -> [String: String] = { [:] }, 
        @XML.InlineBuilder<HTML, ID> content inline:() -> [[XML.Element<HTML, ID>]]) 
        -> XML.Element<HTML, ID> 
        where ID:XML.ID
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
