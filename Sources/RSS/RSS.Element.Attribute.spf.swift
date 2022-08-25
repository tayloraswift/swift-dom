import DOM 

extension RSS.Element 
{
    @frozen public 
    struct Attribute 
    {
        public 
        var value:DOM.Value<Anchor>

        @inlinable public 
        init(_ value:DOM.Value<Anchor>)
        {
            self.value = value
        }
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var domain:Self 
    {
        self.init(.init(escaped: "domain"))
    }
    @inlinable public static 
    func domain<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "domain", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var isPermaLink:Self 
    {
        self.init(.init(escaped: "isPermaLink"))
    }
    @inlinable public static 
    func isPermaLink<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "isPermaLink", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var length:Self 
    {
        self.init(.init(escaped: "length"))
    }
    @inlinable public static 
    func length<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "length", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var type:Self 
    {
        self.init(.init(escaped: "type"))
    }
    @inlinable public static 
    func type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "type", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var url:Self 
    {
        self.init(.init(escaped: "url"))
    }
    @inlinable public static 
    func url<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "url", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    @inlinable public static 
    var version:Self 
    {
        self.init(.init(escaped: "version"))
    }
    @inlinable public static 
    func version<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "version", escaped: string))
    }
}