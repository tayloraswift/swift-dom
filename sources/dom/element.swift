extension DOM 
{    
    @frozen public
    enum Element<Domain, Anchor> where Domain:DocumentDomain
    {
        @frozen public 
        enum Value
        {
            case anchor(Anchor)
            case text(String)
            case void
        }
        public 
        typealias Attribute = (key:String, value:Value)
        
        case anchor     (Anchor)
        case text       (escaped:String)
        case bytes      (utf8:[UInt8])
        case leaf       (Domain.Leaf,      attributes:[Attribute] = []) 
        case container  (Domain.Container, attributes:[Attribute] = [], content:[Self] = []) 
        
        @inlinable public static 
        func text<S>(escaping unescaped:S) -> Self where S:StringProtocol
        {
            .text(escaped: DOM.escape(unescaped))
        }
        
        @inlinable public static 
        subscript(_ leaf:Domain.Leaf, @Attributes attributes:() -> [Attribute]) 
            -> Self
        {
            .leaf(leaf, attributes: attributes())
        }
        @inlinable public static 
        subscript(_ leaf:Domain.Leaf) 
            -> Self
        {
            .leaf(leaf)
        }
        
        @inlinable public static 
        subscript(_ container:Domain.Container, 
            @Attributes attributes attributes:() -> [Attribute], 
            @Content    content       content:() -> [Self] = { [] }) 
            -> Self
        {
            .container(container, attributes: attributes(), content: content())
        }
        @inlinable public static 
        subscript(_ container:Domain.Container, @Content content:() -> [Self]) 
            -> Self
        {
            .container(container, content: content())
        }
        @inlinable public static 
        subscript(_ container:Domain.Container) 
            -> Self
        {
            .container(container)
        }
    }
}
extension DOM.Element:Sendable where Anchor:Sendable, Domain.Leaf:Sendable, Domain.Container:Sendable
{
}
extension DOM.Element.Value:Sendable where Anchor:Sendable
{
}
extension DOM.Element
{
    @inlinable public 
    var plain:String 
    {
        switch self 
        {
        case .bytes     (utf8: let utf8):
            return String.init(decoding: utf8, as: Unicode.UTF8.self)
        case .text      (escaped: let text):
            return text 
        case .leaf      (_, attributes: _): 
            return ""
        case .container (_, attributes: _, content: let content):
            return content.map(\.plain).joined()
        case .anchor: 
            return ""
        }
    }
}
extension DOM.Element 
{
    // by default, only (key:String, value:String) expressions are accepted. 
    // some `Domain`s provide additional DSL
    @resultBuilder 
    public 
    struct Attributes:DocumentArrayBuilder 
    {
        public 
        typealias Element = Attribute
        
        @inlinable public static 
        func buildExpression(_ expression:(String, String)) -> [Attribute]
        {
            [(expression.0, .text(expression.1))]
        }
        @inlinable public static 
        func buildExpression(_ expression:(String, Bool)) -> [Attribute]
        {
            expression.1 ? [(expression.0, .void)] : []
        }
    }
    @resultBuilder 
    public 
    enum Content:DocumentArrayBuilder
    {
        public 
        typealias Element = DOM.Element<Domain, Anchor>
        
        @inlinable public static 
        func buildExpression(_ inline:Element.Prose) -> [Element]  
        {
            inline.elements
        }
        @inlinable public static 
        func buildExpression(_ unescaped:String) -> [Element]  
        {
            [Element.text(escaping: unescaped)]
        }
    }
}
