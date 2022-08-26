import DOM 

extension HTML 
{
    /// An HTML element type that can have children.
    @frozen public 
    enum Container:String, CustomStringConvertible, Sendable
    {
        case html
        case head
        case body
        case a
        case abbr
        case audio
        case b
        case bdi
        case bdo
        case address
        case article
        case aside
        case blockquote
        case button
        case canvas
        case caption
        case code
        case colgroup
        case cite
        case data
        case datalist
        case del
        case details
        case dialog
        case dfn
        case div
        case dl
        case dt
        case dd
        case em
        case embed
        case fieldset
        case figcaption
        case figure
        case footer
        case form
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
        case header
        case i
        case iframe
        case ins
        case kbd
        case label
        case legend
        case li
        case main
        case map
        case mark
        case menu
        case meter
        case nav
        case noscript
        case ol
        case object
        case optgroup
        case option
        case output
        case p
        case picture
        case portal
        case pre
        case progress
        case q
        case rp
        case rt
        case ruby
        case s
        case samp
        case small
        case section
        case span
        case script
        case select
        case slot
        case strong
        case style
        case sub
        case summary
        case sup
        case table
        case tbody
        case td
        case template
        case textarea
        case tfoot
        case th
        case thead
        case time
        case title
        case tr
        case u
        case ul
        case `var`
        case video

        /// The name of this HTML container element.
        @inlinable public 
        var description:String
        {
            self.rawValue
        }
    }
}

extension HTML.Element 
{
    /// Creates an HTML `html` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func html<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .html(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `html` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``html(escaped:attributes:)``.
    @inlinable public static 
    func html<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .html(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `html` element with the given children. 
    @inlinable public static 
    func html(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .html(content, attributes: attributes)
    }
    /// Creates an HTML `html` element with the given content. 
    @inlinable public static 
    func html<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.html, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `head` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func head<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .head(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `head` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``head(escaped:attributes:)``.
    @inlinable public static 
    func head<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .head(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `head` element with the given children. 
    @inlinable public static 
    func head(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .head(content, attributes: attributes)
    }
    /// Creates an HTML `head` element with the given content. 
    @inlinable public static 
    func head<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.head, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `body` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func body<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .body(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `body` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``body(escaped:attributes:)``.
    @inlinable public static 
    func body<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .body(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `body` element with the given children. 
    @inlinable public static 
    func body(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .body(content, attributes: attributes)
    }
    /// Creates an HTML `body` element with the given content. 
    @inlinable public static 
    func body<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.body, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `a` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func a<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .a(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `a` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``a(escaped:attributes:)``.
    @inlinable public static 
    func a<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .a(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `a` element with the given children. 
    @inlinable public static 
    func a(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .a(content, attributes: attributes)
    }
    /// Creates an HTML `a` element with the given content. 
    @inlinable public static 
    func a<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.a, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `abbr` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func abbr<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .abbr(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `abbr` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``abbr(escaped:attributes:)``.
    @inlinable public static 
    func abbr<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .abbr(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `abbr` element with the given children. 
    @inlinable public static 
    func abbr(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .abbr(content, attributes: attributes)
    }
    /// Creates an HTML `abbr` element with the given content. 
    @inlinable public static 
    func abbr<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.abbr, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `audio` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func audio<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .audio(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `audio` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``audio(escaped:attributes:)``.
    @inlinable public static 
    func audio<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .audio(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `audio` element with the given children. 
    @inlinable public static 
    func audio(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .audio(content, attributes: attributes)
    }
    /// Creates an HTML `audio` element with the given content. 
    @inlinable public static 
    func audio<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.audio, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `b` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func b<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .b(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `b` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``b(escaped:attributes:)``.
    @inlinable public static 
    func b<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .b(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `b` element with the given children. 
    @inlinable public static 
    func b(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .b(content, attributes: attributes)
    }
    /// Creates an HTML `b` element with the given content. 
    @inlinable public static 
    func b<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.b, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `bdi` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func bdi<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdi(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `bdi` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``bdi(escaped:attributes:)``.
    @inlinable public static 
    func bdi<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdi(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `bdi` element with the given children. 
    @inlinable public static 
    func bdi(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .bdi(content, attributes: attributes)
    }
    /// Creates an HTML `bdi` element with the given content. 
    @inlinable public static 
    func bdi<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.bdi, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `bdo` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func bdo<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdo(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `bdo` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``bdo(escaped:attributes:)``.
    @inlinable public static 
    func bdo<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdo(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `bdo` element with the given children. 
    @inlinable public static 
    func bdo(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .bdo(content, attributes: attributes)
    }
    /// Creates an HTML `bdo` element with the given content. 
    @inlinable public static 
    func bdo<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.bdo, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `address` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func address<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .address(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `address` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``address(escaped:attributes:)``.
    @inlinable public static 
    func address<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .address(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `address` element with the given children. 
    @inlinable public static 
    func address(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .address(content, attributes: attributes)
    }
    /// Creates an HTML `address` element with the given content. 
    @inlinable public static 
    func address<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.address, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `article` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func article<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .article(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `article` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``article(escaped:attributes:)``.
    @inlinable public static 
    func article<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .article(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `article` element with the given children. 
    @inlinable public static 
    func article(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .article(content, attributes: attributes)
    }
    /// Creates an HTML `article` element with the given content. 
    @inlinable public static 
    func article<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.article, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `aside` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func aside<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .aside(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `aside` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``aside(escaped:attributes:)``.
    @inlinable public static 
    func aside<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .aside(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `aside` element with the given children. 
    @inlinable public static 
    func aside(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .aside(content, attributes: attributes)
    }
    /// Creates an HTML `aside` element with the given content. 
    @inlinable public static 
    func aside<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.aside, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `blockquote` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func blockquote<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .blockquote(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `blockquote` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``blockquote(escaped:attributes:)``.
    @inlinable public static 
    func blockquote<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .blockquote(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `blockquote` element with the given children. 
    @inlinable public static 
    func blockquote(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .blockquote(content, attributes: attributes)
    }
    /// Creates an HTML `blockquote` element with the given content. 
    @inlinable public static 
    func blockquote<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.blockquote, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `button` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func button<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .button(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `button` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``button(escaped:attributes:)``.
    @inlinable public static 
    func button<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .button(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `button` element with the given children. 
    @inlinable public static 
    func button(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .button(content, attributes: attributes)
    }
    /// Creates an HTML `button` element with the given content. 
    @inlinable public static 
    func button<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.button, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `canvas` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func canvas<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .canvas(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `canvas` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``canvas(escaped:attributes:)``.
    @inlinable public static 
    func canvas<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .canvas(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `canvas` element with the given children. 
    @inlinable public static 
    func canvas(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .canvas(content, attributes: attributes)
    }
    /// Creates an HTML `canvas` element with the given content. 
    @inlinable public static 
    func canvas<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.canvas, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `caption` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func caption<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .caption(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `caption` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``caption(escaped:attributes:)``.
    @inlinable public static 
    func caption<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .caption(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `caption` element with the given children. 
    @inlinable public static 
    func caption(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .caption(content, attributes: attributes)
    }
    /// Creates an HTML `caption` element with the given content. 
    @inlinable public static 
    func caption<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.caption, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `code` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func code<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .code(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `code` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``code(escaped:attributes:)``.
    @inlinable public static 
    func code<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .code(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `code` element with the given children. 
    @inlinable public static 
    func code(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .code(content, attributes: attributes)
    }
    /// Creates an HTML `code` element with the given content. 
    @inlinable public static 
    func code<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.code, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `colgroup` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func colgroup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .colgroup(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `colgroup` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``colgroup(escaped:attributes:)``.
    @inlinable public static 
    func colgroup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .colgroup(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `colgroup` element with the given children. 
    @inlinable public static 
    func colgroup(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .colgroup(content, attributes: attributes)
    }
    /// Creates an HTML `colgroup` element with the given content. 
    @inlinable public static 
    func colgroup<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.colgroup, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `cite` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func cite<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .cite(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `cite` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``cite(escaped:attributes:)``.
    @inlinable public static 
    func cite<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .cite(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `cite` element with the given children. 
    @inlinable public static 
    func cite(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .cite(content, attributes: attributes)
    }
    /// Creates an HTML `cite` element with the given content. 
    @inlinable public static 
    func cite<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.cite, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `data` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func data<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .data(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `data` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``data(escaped:attributes:)``.
    @inlinable public static 
    func data<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .data(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `data` element with the given children. 
    @inlinable public static 
    func data(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .data(content, attributes: attributes)
    }
    /// Creates an HTML `data` element with the given content. 
    @inlinable public static 
    func data<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.data, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `datalist` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func datalist<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .datalist(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `datalist` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``datalist(escaped:attributes:)``.
    @inlinable public static 
    func datalist<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .datalist(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `datalist` element with the given children. 
    @inlinable public static 
    func datalist(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .datalist(content, attributes: attributes)
    }
    /// Creates an HTML `datalist` element with the given content. 
    @inlinable public static 
    func datalist<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.datalist, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `del` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func del<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .del(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `del` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``del(escaped:attributes:)``.
    @inlinable public static 
    func del<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .del(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `del` element with the given children. 
    @inlinable public static 
    func del(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .del(content, attributes: attributes)
    }
    /// Creates an HTML `del` element with the given content. 
    @inlinable public static 
    func del<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.del, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `details` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func details<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .details(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `details` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``details(escaped:attributes:)``.
    @inlinable public static 
    func details<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .details(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `details` element with the given children. 
    @inlinable public static 
    func details(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .details(content, attributes: attributes)
    }
    /// Creates an HTML `details` element with the given content. 
    @inlinable public static 
    func details<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.details, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `dialog` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func dialog<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dialog(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `dialog` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``dialog(escaped:attributes:)``.
    @inlinable public static 
    func dialog<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dialog(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `dialog` element with the given children. 
    @inlinable public static 
    func dialog(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .dialog(content, attributes: attributes)
    }
    /// Creates an HTML `dialog` element with the given content. 
    @inlinable public static 
    func dialog<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.dialog, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `dfn` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func dfn<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dfn(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `dfn` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``dfn(escaped:attributes:)``.
    @inlinable public static 
    func dfn<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dfn(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `dfn` element with the given children. 
    @inlinable public static 
    func dfn(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .dfn(content, attributes: attributes)
    }
    /// Creates an HTML `dfn` element with the given content. 
    @inlinable public static 
    func dfn<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.dfn, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `div` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func div<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .div(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `div` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``div(escaped:attributes:)``.
    @inlinable public static 
    func div<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .div(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `div` element with the given children. 
    @inlinable public static 
    func div(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .div(content, attributes: attributes)
    }
    /// Creates an HTML `div` element with the given content. 
    @inlinable public static 
    func div<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.div, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `dl` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func dl<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dl(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `dl` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``dl(escaped:attributes:)``.
    @inlinable public static 
    func dl<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dl(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `dl` element with the given children. 
    @inlinable public static 
    func dl(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .dl(content, attributes: attributes)
    }
    /// Creates an HTML `dl` element with the given content. 
    @inlinable public static 
    func dl<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.dl, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `dt` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func dt<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dt(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `dt` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``dt(escaped:attributes:)``.
    @inlinable public static 
    func dt<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dt(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `dt` element with the given children. 
    @inlinable public static 
    func dt(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .dt(content, attributes: attributes)
    }
    /// Creates an HTML `dt` element with the given content. 
    @inlinable public static 
    func dt<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.dt, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `dd` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func dd<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dd(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `dd` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``dd(escaped:attributes:)``.
    @inlinable public static 
    func dd<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dd(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `dd` element with the given children. 
    @inlinable public static 
    func dd(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .dd(content, attributes: attributes)
    }
    /// Creates an HTML `dd` element with the given content. 
    @inlinable public static 
    func dd<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.dd, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `em` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func em<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .em(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `em` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``em(escaped:attributes:)``.
    @inlinable public static 
    func em<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .em(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `em` element with the given children. 
    @inlinable public static 
    func em(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .em(content, attributes: attributes)
    }
    /// Creates an HTML `em` element with the given content. 
    @inlinable public static 
    func em<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.em, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `embed` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func embed<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .embed(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `embed` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``embed(escaped:attributes:)``.
    @inlinable public static 
    func embed<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .embed(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `embed` element with the given children. 
    @inlinable public static 
    func embed(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .embed(content, attributes: attributes)
    }
    /// Creates an HTML `embed` element with the given content. 
    @inlinable public static 
    func embed<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.embed, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `fieldset` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func fieldset<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fieldset(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `fieldset` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``fieldset(escaped:attributes:)``.
    @inlinable public static 
    func fieldset<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fieldset(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `fieldset` element with the given children. 
    @inlinable public static 
    func fieldset(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .fieldset(content, attributes: attributes)
    }
    /// Creates an HTML `fieldset` element with the given content. 
    @inlinable public static 
    func fieldset<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.fieldset, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `figcaption` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func figcaption<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figcaption(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `figcaption` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``figcaption(escaped:attributes:)``.
    @inlinable public static 
    func figcaption<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figcaption(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `figcaption` element with the given children. 
    @inlinable public static 
    func figcaption(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .figcaption(content, attributes: attributes)
    }
    /// Creates an HTML `figcaption` element with the given content. 
    @inlinable public static 
    func figcaption<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.figcaption, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `figure` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func figure<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figure(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `figure` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``figure(escaped:attributes:)``.
    @inlinable public static 
    func figure<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figure(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `figure` element with the given children. 
    @inlinable public static 
    func figure(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .figure(content, attributes: attributes)
    }
    /// Creates an HTML `figure` element with the given content. 
    @inlinable public static 
    func figure<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.figure, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `footer` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func footer<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .footer(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `footer` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``footer(escaped:attributes:)``.
    @inlinable public static 
    func footer<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .footer(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `footer` element with the given children. 
    @inlinable public static 
    func footer(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .footer(content, attributes: attributes)
    }
    /// Creates an HTML `footer` element with the given content. 
    @inlinable public static 
    func footer<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.footer, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `form` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func form<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .form(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `form` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``form(escaped:attributes:)``.
    @inlinable public static 
    func form<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .form(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `form` element with the given children. 
    @inlinable public static 
    func form(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .form(content, attributes: attributes)
    }
    /// Creates an HTML `form` element with the given content. 
    @inlinable public static 
    func form<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.form, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h1` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h1<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h1(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h1` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h1(escaped:attributes:)``.
    @inlinable public static 
    func h1<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h1(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h1` element with the given children. 
    @inlinable public static 
    func h1(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h1(content, attributes: attributes)
    }
    /// Creates an HTML `h1` element with the given content. 
    @inlinable public static 
    func h1<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h1, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h2` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h2<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h2(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h2` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h2(escaped:attributes:)``.
    @inlinable public static 
    func h2<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h2(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h2` element with the given children. 
    @inlinable public static 
    func h2(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h2(content, attributes: attributes)
    }
    /// Creates an HTML `h2` element with the given content. 
    @inlinable public static 
    func h2<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h2, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h3` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h3<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h3(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h3` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h3(escaped:attributes:)``.
    @inlinable public static 
    func h3<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h3(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h3` element with the given children. 
    @inlinable public static 
    func h3(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h3(content, attributes: attributes)
    }
    /// Creates an HTML `h3` element with the given content. 
    @inlinable public static 
    func h3<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h3, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h4` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h4<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h4(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h4` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h4(escaped:attributes:)``.
    @inlinable public static 
    func h4<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h4(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h4` element with the given children. 
    @inlinable public static 
    func h4(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h4(content, attributes: attributes)
    }
    /// Creates an HTML `h4` element with the given content. 
    @inlinable public static 
    func h4<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h4, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h5` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h5<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h5(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h5` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h5(escaped:attributes:)``.
    @inlinable public static 
    func h5<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h5(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h5` element with the given children. 
    @inlinable public static 
    func h5(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h5(content, attributes: attributes)
    }
    /// Creates an HTML `h5` element with the given content. 
    @inlinable public static 
    func h5<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h5, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `h6` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func h6<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h6(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `h6` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``h6(escaped:attributes:)``.
    @inlinable public static 
    func h6<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h6(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `h6` element with the given children. 
    @inlinable public static 
    func h6(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .h6(content, attributes: attributes)
    }
    /// Creates an HTML `h6` element with the given content. 
    @inlinable public static 
    func h6<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.h6, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `header` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func header<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .header(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `header` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``header(escaped:attributes:)``.
    @inlinable public static 
    func header<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .header(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `header` element with the given children. 
    @inlinable public static 
    func header(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .header(content, attributes: attributes)
    }
    /// Creates an HTML `header` element with the given content. 
    @inlinable public static 
    func header<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.header, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `i` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func i<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .i(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `i` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``i(escaped:attributes:)``.
    @inlinable public static 
    func i<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .i(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `i` element with the given children. 
    @inlinable public static 
    func i(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .i(content, attributes: attributes)
    }
    /// Creates an HTML `i` element with the given content. 
    @inlinable public static 
    func i<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.i, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `iframe` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func iframe<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .iframe(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `iframe` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``iframe(escaped:attributes:)``.
    @inlinable public static 
    func iframe<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .iframe(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `iframe` element with the given children. 
    @inlinable public static 
    func iframe(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .iframe(content, attributes: attributes)
    }
    /// Creates an HTML `iframe` element with the given content. 
    @inlinable public static 
    func iframe<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.iframe, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `ins` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ins<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ins(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `ins` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ins(escaped:attributes:)``.
    @inlinable public static 
    func ins<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ins(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `ins` element with the given children. 
    @inlinable public static 
    func ins(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .ins(content, attributes: attributes)
    }
    /// Creates an HTML `ins` element with the given content. 
    @inlinable public static 
    func ins<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ins, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `kbd` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func kbd<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .kbd(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `kbd` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``kbd(escaped:attributes:)``.
    @inlinable public static 
    func kbd<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .kbd(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `kbd` element with the given children. 
    @inlinable public static 
    func kbd(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .kbd(content, attributes: attributes)
    }
    /// Creates an HTML `kbd` element with the given content. 
    @inlinable public static 
    func kbd<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.kbd, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `label` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func label<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .label(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `label` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``label(escaped:attributes:)``.
    @inlinable public static 
    func label<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .label(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `label` element with the given children. 
    @inlinable public static 
    func label(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .label(content, attributes: attributes)
    }
    /// Creates an HTML `label` element with the given content. 
    @inlinable public static 
    func label<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.label, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `legend` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func legend<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .legend(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `legend` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``legend(escaped:attributes:)``.
    @inlinable public static 
    func legend<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .legend(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `legend` element with the given children. 
    @inlinable public static 
    func legend(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .legend(content, attributes: attributes)
    }
    /// Creates an HTML `legend` element with the given content. 
    @inlinable public static 
    func legend<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.legend, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `li` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func li<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .li(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `li` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``li(escaped:attributes:)``.
    @inlinable public static 
    func li<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .li(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `li` element with the given children. 
    @inlinable public static 
    func li(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .li(content, attributes: attributes)
    }
    /// Creates an HTML `li` element with the given content. 
    @inlinable public static 
    func li<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.li, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `main` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func main<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .main(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `main` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``main(escaped:attributes:)``.
    @inlinable public static 
    func main<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .main(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `main` element with the given children. 
    @inlinable public static 
    func main(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .main(content, attributes: attributes)
    }
    /// Creates an HTML `main` element with the given content. 
    @inlinable public static 
    func main<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.main, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `map` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func map<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .map(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `map` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``map(escaped:attributes:)``.
    @inlinable public static 
    func map<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .map(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `map` element with the given children. 
    @inlinable public static 
    func map(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .map(content, attributes: attributes)
    }
    /// Creates an HTML `map` element with the given content. 
    @inlinable public static 
    func map<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.map, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `mark` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func mark<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mark(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `mark` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``mark(escaped:attributes:)``.
    @inlinable public static 
    func mark<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mark(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `mark` element with the given children. 
    @inlinable public static 
    func mark(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .mark(content, attributes: attributes)
    }
    /// Creates an HTML `mark` element with the given content. 
    @inlinable public static 
    func mark<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.mark, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `menu` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func menu<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .menu(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `menu` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``menu(escaped:attributes:)``.
    @inlinable public static 
    func menu<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .menu(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `menu` element with the given children. 
    @inlinable public static 
    func menu(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .menu(content, attributes: attributes)
    }
    /// Creates an HTML `menu` element with the given content. 
    @inlinable public static 
    func menu<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.menu, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `meter` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func meter<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .meter(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `meter` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``meter(escaped:attributes:)``.
    @inlinable public static 
    func meter<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .meter(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `meter` element with the given children. 
    @inlinable public static 
    func meter(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .meter(content, attributes: attributes)
    }
    /// Creates an HTML `meter` element with the given content. 
    @inlinable public static 
    func meter<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.meter, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `nav` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func nav<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .nav(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `nav` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``nav(escaped:attributes:)``.
    @inlinable public static 
    func nav<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .nav(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `nav` element with the given children. 
    @inlinable public static 
    func nav(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .nav(content, attributes: attributes)
    }
    /// Creates an HTML `nav` element with the given content. 
    @inlinable public static 
    func nav<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.nav, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `noscript` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func noscript<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .noscript(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `noscript` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``noscript(escaped:attributes:)``.
    @inlinable public static 
    func noscript<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .noscript(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `noscript` element with the given children. 
    @inlinable public static 
    func noscript(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .noscript(content, attributes: attributes)
    }
    /// Creates an HTML `noscript` element with the given content. 
    @inlinable public static 
    func noscript<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.noscript, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `ol` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ol<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ol(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `ol` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ol(escaped:attributes:)``.
    @inlinable public static 
    func ol<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ol(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `ol` element with the given children. 
    @inlinable public static 
    func ol(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .ol(content, attributes: attributes)
    }
    /// Creates an HTML `ol` element with the given content. 
    @inlinable public static 
    func ol<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ol, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `object` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func object<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .object(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `object` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``object(escaped:attributes:)``.
    @inlinable public static 
    func object<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .object(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `object` element with the given children. 
    @inlinable public static 
    func object(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .object(content, attributes: attributes)
    }
    /// Creates an HTML `object` element with the given content. 
    @inlinable public static 
    func object<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.object, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `optgroup` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func optgroup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .optgroup(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `optgroup` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``optgroup(escaped:attributes:)``.
    @inlinable public static 
    func optgroup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .optgroup(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `optgroup` element with the given children. 
    @inlinable public static 
    func optgroup(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .optgroup(content, attributes: attributes)
    }
    /// Creates an HTML `optgroup` element with the given content. 
    @inlinable public static 
    func optgroup<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.optgroup, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `option` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func option<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .option(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `option` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``option(escaped:attributes:)``.
    @inlinable public static 
    func option<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .option(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `option` element with the given children. 
    @inlinable public static 
    func option(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .option(content, attributes: attributes)
    }
    /// Creates an HTML `option` element with the given content. 
    @inlinable public static 
    func option<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.option, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `output` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func output<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .output(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `output` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``output(escaped:attributes:)``.
    @inlinable public static 
    func output<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .output(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `output` element with the given children. 
    @inlinable public static 
    func output(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .output(content, attributes: attributes)
    }
    /// Creates an HTML `output` element with the given content. 
    @inlinable public static 
    func output<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.output, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `p` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func p<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .p(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `p` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``p(escaped:attributes:)``.
    @inlinable public static 
    func p<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .p(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `p` element with the given children. 
    @inlinable public static 
    func p(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .p(content, attributes: attributes)
    }
    /// Creates an HTML `p` element with the given content. 
    @inlinable public static 
    func p<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.p, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `picture` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func picture<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .picture(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `picture` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``picture(escaped:attributes:)``.
    @inlinable public static 
    func picture<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .picture(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `picture` element with the given children. 
    @inlinable public static 
    func picture(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .picture(content, attributes: attributes)
    }
    /// Creates an HTML `picture` element with the given content. 
    @inlinable public static 
    func picture<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.picture, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `portal` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func portal<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .portal(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `portal` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``portal(escaped:attributes:)``.
    @inlinable public static 
    func portal<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .portal(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `portal` element with the given children. 
    @inlinable public static 
    func portal(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .portal(content, attributes: attributes)
    }
    /// Creates an HTML `portal` element with the given content. 
    @inlinable public static 
    func portal<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.portal, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `pre` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func pre<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pre(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `pre` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``pre(escaped:attributes:)``.
    @inlinable public static 
    func pre<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pre(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `pre` element with the given children. 
    @inlinable public static 
    func pre(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .pre(content, attributes: attributes)
    }
    /// Creates an HTML `pre` element with the given content. 
    @inlinable public static 
    func pre<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.pre, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `progress` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func progress<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .progress(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `progress` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``progress(escaped:attributes:)``.
    @inlinable public static 
    func progress<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .progress(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `progress` element with the given children. 
    @inlinable public static 
    func progress(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .progress(content, attributes: attributes)
    }
    /// Creates an HTML `progress` element with the given content. 
    @inlinable public static 
    func progress<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.progress, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `q` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func q<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .q(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `q` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``q(escaped:attributes:)``.
    @inlinable public static 
    func q<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .q(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `q` element with the given children. 
    @inlinable public static 
    func q(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .q(content, attributes: attributes)
    }
    /// Creates an HTML `q` element with the given content. 
    @inlinable public static 
    func q<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.q, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `rp` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func rp<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rp(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `rp` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``rp(escaped:attributes:)``.
    @inlinable public static 
    func rp<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rp(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `rp` element with the given children. 
    @inlinable public static 
    func rp(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .rp(content, attributes: attributes)
    }
    /// Creates an HTML `rp` element with the given content. 
    @inlinable public static 
    func rp<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.rp, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `rt` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func rt<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rt(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `rt` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``rt(escaped:attributes:)``.
    @inlinable public static 
    func rt<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rt(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `rt` element with the given children. 
    @inlinable public static 
    func rt(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .rt(content, attributes: attributes)
    }
    /// Creates an HTML `rt` element with the given content. 
    @inlinable public static 
    func rt<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.rt, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `ruby` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ruby<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ruby(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `ruby` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ruby(escaped:attributes:)``.
    @inlinable public static 
    func ruby<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ruby(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `ruby` element with the given children. 
    @inlinable public static 
    func ruby(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .ruby(content, attributes: attributes)
    }
    /// Creates an HTML `ruby` element with the given content. 
    @inlinable public static 
    func ruby<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ruby, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `s` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func s<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .s(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `s` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``s(escaped:attributes:)``.
    @inlinable public static 
    func s<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .s(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `s` element with the given children. 
    @inlinable public static 
    func s(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .s(content, attributes: attributes)
    }
    /// Creates an HTML `s` element with the given content. 
    @inlinable public static 
    func s<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.s, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `samp` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func samp<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .samp(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `samp` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``samp(escaped:attributes:)``.
    @inlinable public static 
    func samp<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .samp(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `samp` element with the given children. 
    @inlinable public static 
    func samp(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .samp(content, attributes: attributes)
    }
    /// Creates an HTML `samp` element with the given content. 
    @inlinable public static 
    func samp<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.samp, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `small` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func small<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .small(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `small` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``small(escaped:attributes:)``.
    @inlinable public static 
    func small<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .small(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `small` element with the given children. 
    @inlinable public static 
    func small(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .small(content, attributes: attributes)
    }
    /// Creates an HTML `small` element with the given content. 
    @inlinable public static 
    func small<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.small, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `section` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func section<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .section(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `section` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``section(escaped:attributes:)``.
    @inlinable public static 
    func section<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .section(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `section` element with the given children. 
    @inlinable public static 
    func section(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .section(content, attributes: attributes)
    }
    /// Creates an HTML `section` element with the given content. 
    @inlinable public static 
    func section<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.section, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `span` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func span<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .span(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `span` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``span(escaped:attributes:)``.
    @inlinable public static 
    func span<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .span(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `span` element with the given children. 
    @inlinable public static 
    func span(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .span(content, attributes: attributes)
    }
    /// Creates an HTML `span` element with the given content. 
    @inlinable public static 
    func span<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.span, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `script` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func script<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .script(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `script` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``script(escaped:attributes:)``.
    @inlinable public static 
    func script<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .script(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `script` element with the given children. 
    @inlinable public static 
    func script(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .script(content, attributes: attributes)
    }
    /// Creates an HTML `script` element with the given content. 
    @inlinable public static 
    func script<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.script, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `select` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func select<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .select(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `select` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``select(escaped:attributes:)``.
    @inlinable public static 
    func select<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .select(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `select` element with the given children. 
    @inlinable public static 
    func select(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .select(content, attributes: attributes)
    }
    /// Creates an HTML `select` element with the given content. 
    @inlinable public static 
    func select<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.select, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `slot` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func slot<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .slot(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `slot` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``slot(escaped:attributes:)``.
    @inlinable public static 
    func slot<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .slot(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `slot` element with the given children. 
    @inlinable public static 
    func slot(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .slot(content, attributes: attributes)
    }
    /// Creates an HTML `slot` element with the given content. 
    @inlinable public static 
    func slot<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.slot, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `strong` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func strong<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .strong(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `strong` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``strong(escaped:attributes:)``.
    @inlinable public static 
    func strong<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .strong(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `strong` element with the given children. 
    @inlinable public static 
    func strong(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .strong(content, attributes: attributes)
    }
    /// Creates an HTML `strong` element with the given content. 
    @inlinable public static 
    func strong<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.strong, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `style` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func style<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .style(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `style` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``style(escaped:attributes:)``.
    @inlinable public static 
    func style<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .style(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `style` element with the given children. 
    @inlinable public static 
    func style(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .style(content, attributes: attributes)
    }
    /// Creates an HTML `style` element with the given content. 
    @inlinable public static 
    func style<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.style, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `sub` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func sub<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sub(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `sub` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``sub(escaped:attributes:)``.
    @inlinable public static 
    func sub<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sub(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `sub` element with the given children. 
    @inlinable public static 
    func sub(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .sub(content, attributes: attributes)
    }
    /// Creates an HTML `sub` element with the given content. 
    @inlinable public static 
    func sub<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.sub, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `summary` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func summary<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .summary(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `summary` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``summary(escaped:attributes:)``.
    @inlinable public static 
    func summary<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .summary(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `summary` element with the given children. 
    @inlinable public static 
    func summary(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .summary(content, attributes: attributes)
    }
    /// Creates an HTML `summary` element with the given content. 
    @inlinable public static 
    func summary<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.summary, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `sup` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func sup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sup(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `sup` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``sup(escaped:attributes:)``.
    @inlinable public static 
    func sup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sup(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `sup` element with the given children. 
    @inlinable public static 
    func sup(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .sup(content, attributes: attributes)
    }
    /// Creates an HTML `sup` element with the given content. 
    @inlinable public static 
    func sup<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.sup, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `table` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func table<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .table(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `table` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``table(escaped:attributes:)``.
    @inlinable public static 
    func table<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .table(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `table` element with the given children. 
    @inlinable public static 
    func table(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .table(content, attributes: attributes)
    }
    /// Creates an HTML `table` element with the given content. 
    @inlinable public static 
    func table<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.table, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `tbody` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func tbody<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tbody(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `tbody` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``tbody(escaped:attributes:)``.
    @inlinable public static 
    func tbody<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tbody(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `tbody` element with the given children. 
    @inlinable public static 
    func tbody(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .tbody(content, attributes: attributes)
    }
    /// Creates an HTML `tbody` element with the given content. 
    @inlinable public static 
    func tbody<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.tbody, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `td` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func td<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .td(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `td` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``td(escaped:attributes:)``.
    @inlinable public static 
    func td<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .td(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `td` element with the given children. 
    @inlinable public static 
    func td(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .td(content, attributes: attributes)
    }
    /// Creates an HTML `td` element with the given content. 
    @inlinable public static 
    func td<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.td, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `template` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func template<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .template(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `template` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``template(escaped:attributes:)``.
    @inlinable public static 
    func template<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .template(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `template` element with the given children. 
    @inlinable public static 
    func template(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .template(content, attributes: attributes)
    }
    /// Creates an HTML `template` element with the given content. 
    @inlinable public static 
    func template<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.template, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `textarea` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func textarea<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textarea(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `textarea` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``textarea(escaped:attributes:)``.
    @inlinable public static 
    func textarea<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textarea(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `textarea` element with the given children. 
    @inlinable public static 
    func textarea(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .textarea(content, attributes: attributes)
    }
    /// Creates an HTML `textarea` element with the given content. 
    @inlinable public static 
    func textarea<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.textarea, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `tfoot` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func tfoot<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tfoot(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `tfoot` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``tfoot(escaped:attributes:)``.
    @inlinable public static 
    func tfoot<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tfoot(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `tfoot` element with the given children. 
    @inlinable public static 
    func tfoot(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .tfoot(content, attributes: attributes)
    }
    /// Creates an HTML `tfoot` element with the given content. 
    @inlinable public static 
    func tfoot<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.tfoot, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `th` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func th<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .th(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `th` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``th(escaped:attributes:)``.
    @inlinable public static 
    func th<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .th(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `th` element with the given children. 
    @inlinable public static 
    func th(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .th(content, attributes: attributes)
    }
    /// Creates an HTML `th` element with the given content. 
    @inlinable public static 
    func th<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.th, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `thead` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func thead<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .thead(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `thead` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``thead(escaped:attributes:)``.
    @inlinable public static 
    func thead<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .thead(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `thead` element with the given children. 
    @inlinable public static 
    func thead(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .thead(content, attributes: attributes)
    }
    /// Creates an HTML `thead` element with the given content. 
    @inlinable public static 
    func thead<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.thead, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `time` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func time<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .time(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `time` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``time(escaped:attributes:)``.
    @inlinable public static 
    func time<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .time(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `time` element with the given children. 
    @inlinable public static 
    func time(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .time(content, attributes: attributes)
    }
    /// Creates an HTML `time` element with the given content. 
    @inlinable public static 
    func time<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.time, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `title` element containing the given string.
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
    /// Creates an HTML `title` element containing the given string, 
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
    /// Creates an HTML `title` element with the given children. 
    @inlinable public static 
    func title(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .title(content, attributes: attributes)
    }
    /// Creates an HTML `title` element with the given content. 
    @inlinable public static 
    func title<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.title, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `tr` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func tr<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tr(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `tr` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``tr(escaped:attributes:)``.
    @inlinable public static 
    func tr<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tr(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `tr` element with the given children. 
    @inlinable public static 
    func tr(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .tr(content, attributes: attributes)
    }
    /// Creates an HTML `tr` element with the given content. 
    @inlinable public static 
    func tr<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.tr, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `u` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func u<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .u(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `u` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``u(escaped:attributes:)``.
    @inlinable public static 
    func u<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .u(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `u` element with the given children. 
    @inlinable public static 
    func u(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .u(content, attributes: attributes)
    }
    /// Creates an HTML `u` element with the given content. 
    @inlinable public static 
    func u<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.u, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `ul` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ul<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ul(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `ul` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ul(escaped:attributes:)``.
    @inlinable public static 
    func ul<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ul(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `ul` element with the given children. 
    @inlinable public static 
    func ul(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .ul(content, attributes: attributes)
    }
    /// Creates an HTML `ul` element with the given content. 
    @inlinable public static 
    func ul<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ul, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML ``var`` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func `var`<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`var`(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML ``var`` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ```var`(escaped:attributes:)``.
    @inlinable public static 
    func `var`<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`var`(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML ``var`` element with the given children. 
    @inlinable public static 
    func `var`(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .`var`(content, attributes: attributes)
    }
    /// Creates an HTML ``var`` element with the given content. 
    @inlinable public static 
    func `var`<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.`var`, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `video` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func video<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .video(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an HTML `video` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``video(escaped:attributes:)``.
    @inlinable public static 
    func video<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .video(Self.init(string), attributes: attributes)
    }
    /// Creates an HTML `video` element with the given children. 
    @inlinable public static 
    func video(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .video(content, attributes: attributes)
    }
    /// Creates an HTML `video` element with the given content. 
    @inlinable public static 
    func video<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.video, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}