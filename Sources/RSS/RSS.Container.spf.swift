import DOM 

extension RSS 
{
    /// An RSS element type that can have children.
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
    /// Creates an RSS `rss` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func rss<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rss(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `rss` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``rss(escaped:attributes:)``.
    @inlinable public static 
    func rss<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rss(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `rss` element. 
    @inlinable public static 
    func rss(attributes:[Attribute] = []) -> Self 
    {
        .rss(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `rss` element containing a single child element. 
    @inlinable public static 
    func rss(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .rss(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `rss` element with the given content. 
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
    /// Creates an RSS `channel` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func channel<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .channel(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `channel` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``channel(escaped:attributes:)``.
    @inlinable public static 
    func channel<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .channel(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `channel` element. 
    @inlinable public static 
    func channel(attributes:[Attribute] = []) -> Self 
    {
        .channel(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `channel` element containing a single child element. 
    @inlinable public static 
    func channel(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .channel(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `channel` element with the given content. 
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
    /// Creates an RSS `title` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func title<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .title(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `title` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``title(escaped:attributes:)``.
    @inlinable public static 
    func title<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .title(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `title` element. 
    @inlinable public static 
    func title(attributes:[Attribute] = []) -> Self 
    {
        .title(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `title` element containing a single child element. 
    @inlinable public static 
    func title(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .title(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `title` element with the given content. 
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
    /// Creates an RSS `description` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func description<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .description(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `description` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``description(escaped:attributes:)``.
    @inlinable public static 
    func description<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .description(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `description` element. 
    @inlinable public static 
    func description(attributes:[Attribute] = []) -> Self 
    {
        .description(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `description` element containing a single child element. 
    @inlinable public static 
    func description(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .description(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `description` element with the given content. 
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
    /// Creates an RSS `link` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func link<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .link(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `link` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``link(escaped:attributes:)``.
    @inlinable public static 
    func link<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .link(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `link` element. 
    @inlinable public static 
    func link(attributes:[Attribute] = []) -> Self 
    {
        .link(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `link` element containing a single child element. 
    @inlinable public static 
    func link(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .link(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `link` element with the given content. 
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
    /// Creates an RSS `copyright` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func copyright<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .copyright(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `copyright` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``copyright(escaped:attributes:)``.
    @inlinable public static 
    func copyright<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .copyright(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `copyright` element. 
    @inlinable public static 
    func copyright(attributes:[Attribute] = []) -> Self 
    {
        .copyright(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `copyright` element containing a single child element. 
    @inlinable public static 
    func copyright(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .copyright(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `copyright` element with the given content. 
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
    /// Creates an RSS `lastBuildDate` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func lastBuildDate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .lastBuildDate(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `lastBuildDate` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``lastBuildDate(escaped:attributes:)``.
    @inlinable public static 
    func lastBuildDate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .lastBuildDate(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `lastBuildDate` element. 
    @inlinable public static 
    func lastBuildDate(attributes:[Attribute] = []) -> Self 
    {
        .lastBuildDate(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `lastBuildDate` element containing a single child element. 
    @inlinable public static 
    func lastBuildDate(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .lastBuildDate(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `lastBuildDate` element with the given content. 
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
    /// Creates an RSS `pubDate` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func pubDate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pubDate(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `pubDate` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``pubDate(escaped:attributes:)``.
    @inlinable public static 
    func pubDate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pubDate(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `pubDate` element. 
    @inlinable public static 
    func pubDate(attributes:[Attribute] = []) -> Self 
    {
        .pubDate(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `pubDate` element containing a single child element. 
    @inlinable public static 
    func pubDate(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .pubDate(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `pubDate` element with the given content. 
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
    /// Creates an RSS `ttl` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ttl<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ttl(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `ttl` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ttl(escaped:attributes:)``.
    @inlinable public static 
    func ttl<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ttl(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `ttl` element. 
    @inlinable public static 
    func ttl(attributes:[Attribute] = []) -> Self 
    {
        .ttl(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `ttl` element containing a single child element. 
    @inlinable public static 
    func ttl(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ttl(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `ttl` element with the given content. 
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
    /// Creates an RSS `item` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func item<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .item(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an RSS `item` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``item(escaped:attributes:)``.
    @inlinable public static 
    func item<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .item(Self.init(string), attributes: attributes)
    }
    /// Creates an empty RSS `item` element. 
    @inlinable public static 
    func item(attributes:[Attribute] = []) -> Self 
    {
        .item(EmptyCollection<Self>.init(), attributes: attributes)
    }
    /// Creates an RSS `item` element containing a single child element. 
    @inlinable public static 
    func item(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .item(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    /// Creates an RSS `item` element with the given content. 
    @inlinable public static 
    func item<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.item, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}