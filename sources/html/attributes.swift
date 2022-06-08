/* import DOM

public 
protocol HTMLAttribute:Attribute
{
}
extension DOM.Element.Attributes where Domain == HTML 
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
    enum Alt:HTMLAttribute
    {
        @inlinable public
        static var name:String { "alt" }
    }
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
    enum ID:HTMLAttribute
    {
        @inlinable public
        static var name:String { "id" }
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
} */
