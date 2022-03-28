@_exported import StructuredDocument

public 
enum RSS:DocumentDomain
{
    @frozen public 
    enum Container:String, ContainerDomain, Sendable
    {
        case rss
        case channel 
        case title 
        case description 
        case link 
        case copyright 
        case lastBuildDate 
        case pubDate 
        case ttl 
        case item 
        
        @inlinable public static 
        var root:Self { .rss }
    }
    @frozen public 
    enum Leaf:LeafDomain, Sendable
    {
        @inlinable public
        var name:String { fatalError("unreachable") }
        @inlinable public
        var void:Bool { true }
    }
}

public
typealias _RSS = RSS
extension Document 
{
    @available(*, deprecated, renamed: "RSS")
    public
    typealias RSS = _RSS
}
// attributes 
public 
protocol RSSAttribute:DocumentAttribute
{
}
extension DocumentElement.Attributes where Domain == RSS
{
    // if an attribute is its own expression type, infer the key-value pair 
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:Attribute) -> [Element] 
        where Attribute:RSSAttribute, Attribute.Expression == Attribute 
    {
        Self.buildExpression(Attribute.item(from: expression))
    }
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:(Attribute.Expression, as:Attribute.Type)) -> [Element] 
        where Attribute:RSSAttribute
    {
        Self.buildExpression(Attribute.item(from: expression.0))
    }
}
extension RSS 
{
    public 
    enum Version:RSSAttribute
    {
        @inlinable public 
        static var name:String { "version" }
    }
}
