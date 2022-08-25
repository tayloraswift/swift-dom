import DOM 

extension RSS 
{
    @frozen public 
    enum Container:String, CustomStringConvertible, Sendable
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

        @inlinable public 
        var description:String
        {
            self.rawValue
        }
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func rss<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rss(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func rss<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rss(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func rss(attributes:[Attribute] = []) -> Self 
    {
        .rss(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func rss(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .rss(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func rss<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.rss, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func channel<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .channel(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func channel<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .channel(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func channel(attributes:[Attribute] = []) -> Self 
    {
        .channel(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func channel(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .channel(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func channel<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.channel, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func title<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .title(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func title<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .title(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func title(attributes:[Attribute] = []) -> Self 
    {
        .title(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func title(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .title(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func title<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.title, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func description<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .description(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func description<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .description(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func description(attributes:[Attribute] = []) -> Self 
    {
        .description(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func description(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .description(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func description<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.description, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func link<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .link(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func link<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .link(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func link(attributes:[Attribute] = []) -> Self 
    {
        .link(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func link(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .link(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func link<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.link, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func copyright<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .copyright(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func copyright<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .copyright(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func copyright(attributes:[Attribute] = []) -> Self 
    {
        .copyright(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func copyright(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .copyright(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func copyright<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.copyright, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func lastBuildDate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .lastBuildDate(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func lastBuildDate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .lastBuildDate(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func lastBuildDate(attributes:[Attribute] = []) -> Self 
    {
        .lastBuildDate(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func lastBuildDate(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .lastBuildDate(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func lastBuildDate<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.lastBuildDate, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func pubDate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pubDate(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func pubDate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pubDate(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func pubDate(attributes:[Attribute] = []) -> Self 
    {
        .pubDate(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func pubDate(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .pubDate(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func pubDate<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.pubDate, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func ttl<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ttl(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ttl<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ttl(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ttl(attributes:[Attribute] = []) -> Self 
    {
        .ttl(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ttl(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ttl(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func ttl<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ttl, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension RSS.Element 
{
    @inlinable public static 
    func item<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .item(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func item<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .item(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func item(attributes:[Attribute] = []) -> Self 
    {
        .item(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func item(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .item(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func item<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.item, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}