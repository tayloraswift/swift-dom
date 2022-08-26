import DOM 

extension RSS.Element 
{
    /// An RSS attribute.
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
        @inlinable public 
        init(anchor:Anchor)
        {
            self.init(.anchor(anchor))
        }
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"domain"` attribute, with no associated value.
    @inlinable public static 
    var domain:Self 
    {
        self.init(.init(escaped: "domain"))
    }
    /// Returns an instance of the RSS `"domain"` attribute, with the given string value.
    @inlinable public static 
    func domain<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "domain", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"isPermaLink"` attribute, with no associated value.
    @inlinable public static 
    var isPermaLink:Self 
    {
        self.init(.init(escaped: "isPermaLink"))
    }
    /// Returns an instance of the RSS `"isPermaLink"` attribute, with the given string value.
    @inlinable public static 
    func isPermaLink<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "isPermaLink", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"length"` attribute, with no associated value.
    @inlinable public static 
    var length:Self 
    {
        self.init(.init(escaped: "length"))
    }
    /// Returns an instance of the RSS `"length"` attribute, with the given string value.
    @inlinable public static 
    func length<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "length", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"type"` attribute, with no associated value.
    @inlinable public static 
    var type:Self 
    {
        self.init(.init(escaped: "type"))
    }
    /// Returns an instance of the RSS `"type"` attribute, with the given string value.
    @inlinable public static 
    func type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "type", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"url"` attribute, with no associated value.
    @inlinable public static 
    var url:Self 
    {
        self.init(.init(escaped: "url"))
    }
    /// Returns an instance of the RSS `"url"` attribute, with the given string value.
    @inlinable public static 
    func url<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "url", escaped: string))
    }
}
extension RSS.Element.Attribute 
{
    /// Returns an instance of the RSS `"version"` attribute, with no associated value.
    @inlinable public static 
    var version:Self 
    {
        self.init(.init(escaped: "version"))
    }
    /// Returns an instance of the RSS `"version"` attribute, with the given string value.
    @inlinable public static 
    func version<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "version", escaped: string))
    }
}