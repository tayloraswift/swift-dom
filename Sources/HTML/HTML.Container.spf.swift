import DOM 

extension HTML 
{
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

        @inlinable public 
        var description:String
        {
            self.rawValue
        }
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func html<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .html(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func html<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .html(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func html(attributes:[Attribute] = []) -> Self 
    {
        .html(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func html(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .html(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func head<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .head(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func head<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .head(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func head(attributes:[Attribute] = []) -> Self 
    {
        .head(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func head(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .head(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func body<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .body(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func body<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .body(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func body(attributes:[Attribute] = []) -> Self 
    {
        .body(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func body(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .body(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func a<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .a(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func a<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .a(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func a(attributes:[Attribute] = []) -> Self 
    {
        .a(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func a(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .a(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func abbr<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .abbr(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func abbr<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .abbr(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func abbr(attributes:[Attribute] = []) -> Self 
    {
        .abbr(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func abbr(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .abbr(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func audio<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .audio(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func audio<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .audio(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func audio(attributes:[Attribute] = []) -> Self 
    {
        .audio(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func audio(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .audio(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func b<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .b(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func b<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .b(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func b(attributes:[Attribute] = []) -> Self 
    {
        .b(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func b(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .b(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func bdi<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdi(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func bdi<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdi(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func bdi(attributes:[Attribute] = []) -> Self 
    {
        .bdi(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func bdi(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .bdi(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func bdo<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdo(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func bdo<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .bdo(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func bdo(attributes:[Attribute] = []) -> Self 
    {
        .bdo(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func bdo(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .bdo(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func address<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .address(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func address<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .address(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func address(attributes:[Attribute] = []) -> Self 
    {
        .address(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func address(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .address(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func article<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .article(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func article<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .article(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func article(attributes:[Attribute] = []) -> Self 
    {
        .article(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func article(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .article(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func aside<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .aside(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func aside<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .aside(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func aside(attributes:[Attribute] = []) -> Self 
    {
        .aside(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func aside(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .aside(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func blockquote<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .blockquote(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func blockquote<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .blockquote(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func blockquote(attributes:[Attribute] = []) -> Self 
    {
        .blockquote(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func blockquote(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .blockquote(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func button<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .button(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func button<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .button(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func button(attributes:[Attribute] = []) -> Self 
    {
        .button(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func button(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .button(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func canvas<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .canvas(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func canvas<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .canvas(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func canvas(attributes:[Attribute] = []) -> Self 
    {
        .canvas(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func canvas(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .canvas(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func caption<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .caption(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func caption<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .caption(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func caption(attributes:[Attribute] = []) -> Self 
    {
        .caption(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func caption(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .caption(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func code<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .code(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func code<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .code(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func code(attributes:[Attribute] = []) -> Self 
    {
        .code(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func code(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .code(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func colgroup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .colgroup(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func colgroup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .colgroup(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func colgroup(attributes:[Attribute] = []) -> Self 
    {
        .colgroup(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func colgroup(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .colgroup(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func cite<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .cite(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func cite<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .cite(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func cite(attributes:[Attribute] = []) -> Self 
    {
        .cite(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func cite(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .cite(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func data<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .data(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func data<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .data(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func data(attributes:[Attribute] = []) -> Self 
    {
        .data(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func data(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .data(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func datalist<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .datalist(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func datalist<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .datalist(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func datalist(attributes:[Attribute] = []) -> Self 
    {
        .datalist(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func datalist(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .datalist(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func del<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .del(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func del<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .del(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func del(attributes:[Attribute] = []) -> Self 
    {
        .del(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func del(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .del(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func details<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .details(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func details<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .details(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func details(attributes:[Attribute] = []) -> Self 
    {
        .details(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func details(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .details(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func dialog<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dialog(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func dialog<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dialog(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func dialog(attributes:[Attribute] = []) -> Self 
    {
        .dialog(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func dialog(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .dialog(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func dfn<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dfn(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func dfn<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dfn(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func dfn(attributes:[Attribute] = []) -> Self 
    {
        .dfn(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func dfn(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .dfn(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func div<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .div(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func div<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .div(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func div(attributes:[Attribute] = []) -> Self 
    {
        .div(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func div(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .div(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func dl<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dl(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func dl<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dl(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func dl(attributes:[Attribute] = []) -> Self 
    {
        .dl(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func dl(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .dl(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func dt<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dt(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func dt<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dt(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func dt(attributes:[Attribute] = []) -> Self 
    {
        .dt(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func dt(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .dt(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func dd<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dd(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func dd<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .dd(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func dd(attributes:[Attribute] = []) -> Self 
    {
        .dd(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func dd(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .dd(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func em<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .em(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func em<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .em(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func em(attributes:[Attribute] = []) -> Self 
    {
        .em(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func em(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .em(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func embed<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .embed(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func embed<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .embed(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func embed(attributes:[Attribute] = []) -> Self 
    {
        .embed(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func embed(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .embed(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func fieldset<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fieldset(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func fieldset<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fieldset(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func fieldset(attributes:[Attribute] = []) -> Self 
    {
        .fieldset(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func fieldset(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .fieldset(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func figcaption<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figcaption(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func figcaption<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figcaption(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func figcaption(attributes:[Attribute] = []) -> Self 
    {
        .figcaption(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func figcaption(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .figcaption(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func figure<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figure(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func figure<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .figure(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func figure(attributes:[Attribute] = []) -> Self 
    {
        .figure(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func figure(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .figure(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func footer<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .footer(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func footer<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .footer(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func footer(attributes:[Attribute] = []) -> Self 
    {
        .footer(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func footer(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .footer(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func form<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .form(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func form<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .form(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func form(attributes:[Attribute] = []) -> Self 
    {
        .form(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func form(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .form(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h1<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h1(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h1<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h1(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h1(attributes:[Attribute] = []) -> Self 
    {
        .h1(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h1(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h1(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h2<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h2(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h2<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h2(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h2(attributes:[Attribute] = []) -> Self 
    {
        .h2(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h2(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h2(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h3<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h3(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h3<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h3(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h3(attributes:[Attribute] = []) -> Self 
    {
        .h3(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h3(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h3(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h4<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h4(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h4<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h4(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h4(attributes:[Attribute] = []) -> Self 
    {
        .h4(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h4(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h4(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h5<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h5(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h5<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h5(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h5(attributes:[Attribute] = []) -> Self 
    {
        .h5(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h5(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h5(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func h6<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h6(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func h6<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .h6(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func h6(attributes:[Attribute] = []) -> Self 
    {
        .h6(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func h6(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .h6(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func header<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .header(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func header<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .header(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func header(attributes:[Attribute] = []) -> Self 
    {
        .header(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func header(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .header(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func i<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .i(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func i<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .i(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func i(attributes:[Attribute] = []) -> Self 
    {
        .i(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func i(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .i(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func iframe<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .iframe(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func iframe<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .iframe(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func iframe(attributes:[Attribute] = []) -> Self 
    {
        .iframe(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func iframe(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .iframe(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func ins<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ins(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ins<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ins(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ins(attributes:[Attribute] = []) -> Self 
    {
        .ins(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ins(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ins(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func kbd<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .kbd(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func kbd<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .kbd(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func kbd(attributes:[Attribute] = []) -> Self 
    {
        .kbd(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func kbd(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .kbd(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func label<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .label(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func label<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .label(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func label(attributes:[Attribute] = []) -> Self 
    {
        .label(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func label(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .label(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func legend<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .legend(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func legend<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .legend(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func legend(attributes:[Attribute] = []) -> Self 
    {
        .legend(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func legend(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .legend(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func li<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .li(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func li<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .li(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func li(attributes:[Attribute] = []) -> Self 
    {
        .li(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func li(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .li(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func main<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .main(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func main<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .main(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func main(attributes:[Attribute] = []) -> Self 
    {
        .main(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func main(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .main(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func map<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .map(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func map<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .map(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func map(attributes:[Attribute] = []) -> Self 
    {
        .map(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func map(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .map(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func mark<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mark(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func mark<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mark(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func mark(attributes:[Attribute] = []) -> Self 
    {
        .mark(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func mark(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .mark(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func menu<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .menu(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func menu<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .menu(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func menu(attributes:[Attribute] = []) -> Self 
    {
        .menu(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func menu(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .menu(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func meter<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .meter(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func meter<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .meter(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func meter(attributes:[Attribute] = []) -> Self 
    {
        .meter(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func meter(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .meter(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func nav<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .nav(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func nav<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .nav(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func nav(attributes:[Attribute] = []) -> Self 
    {
        .nav(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func nav(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .nav(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func noscript<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .noscript(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func noscript<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .noscript(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func noscript(attributes:[Attribute] = []) -> Self 
    {
        .noscript(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func noscript(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .noscript(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func ol<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ol(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ol<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ol(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ol(attributes:[Attribute] = []) -> Self 
    {
        .ol(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ol(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ol(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func object<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .object(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func object<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .object(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func object(attributes:[Attribute] = []) -> Self 
    {
        .object(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func object(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .object(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func optgroup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .optgroup(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func optgroup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .optgroup(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func optgroup(attributes:[Attribute] = []) -> Self 
    {
        .optgroup(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func optgroup(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .optgroup(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func option<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .option(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func option<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .option(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func option(attributes:[Attribute] = []) -> Self 
    {
        .option(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func option(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .option(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func output<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .output(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func output<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .output(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func output(attributes:[Attribute] = []) -> Self 
    {
        .output(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func output(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .output(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func p<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .p(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func p<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .p(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func p(attributes:[Attribute] = []) -> Self 
    {
        .p(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func p(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .p(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func picture<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .picture(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func picture<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .picture(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func picture(attributes:[Attribute] = []) -> Self 
    {
        .picture(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func picture(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .picture(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func portal<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .portal(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func portal<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .portal(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func portal(attributes:[Attribute] = []) -> Self 
    {
        .portal(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func portal(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .portal(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func pre<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pre(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func pre<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pre(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func pre(attributes:[Attribute] = []) -> Self 
    {
        .pre(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func pre(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .pre(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func progress<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .progress(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func progress<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .progress(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func progress(attributes:[Attribute] = []) -> Self 
    {
        .progress(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func progress(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .progress(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func q<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .q(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func q<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .q(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func q(attributes:[Attribute] = []) -> Self 
    {
        .q(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func q(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .q(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func rp<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rp(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func rp<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rp(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func rp(attributes:[Attribute] = []) -> Self 
    {
        .rp(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func rp(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .rp(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func rt<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rt(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func rt<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rt(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func rt(attributes:[Attribute] = []) -> Self 
    {
        .rt(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func rt(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .rt(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func ruby<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ruby(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ruby<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ruby(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ruby(attributes:[Attribute] = []) -> Self 
    {
        .ruby(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ruby(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ruby(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func s<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .s(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func s<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .s(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func s(attributes:[Attribute] = []) -> Self 
    {
        .s(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func s(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .s(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func samp<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .samp(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func samp<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .samp(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func samp(attributes:[Attribute] = []) -> Self 
    {
        .samp(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func samp(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .samp(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func small<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .small(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func small<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .small(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func small(attributes:[Attribute] = []) -> Self 
    {
        .small(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func small(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .small(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func section<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .section(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func section<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .section(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func section(attributes:[Attribute] = []) -> Self 
    {
        .section(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func section(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .section(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func span<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .span(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func span<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .span(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func span(attributes:[Attribute] = []) -> Self 
    {
        .span(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func span(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .span(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func script<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .script(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func script<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .script(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func script(attributes:[Attribute] = []) -> Self 
    {
        .script(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func script(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .script(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func select<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .select(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func select<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .select(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func select(attributes:[Attribute] = []) -> Self 
    {
        .select(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func select(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .select(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func slot<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .slot(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func slot<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .slot(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func slot(attributes:[Attribute] = []) -> Self 
    {
        .slot(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func slot(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .slot(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func strong<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .strong(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func strong<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .strong(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func strong(attributes:[Attribute] = []) -> Self 
    {
        .strong(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func strong(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .strong(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func style<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .style(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func style<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .style(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func style(attributes:[Attribute] = []) -> Self 
    {
        .style(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func style(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .style(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func sub<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sub(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func sub<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sub(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func sub(attributes:[Attribute] = []) -> Self 
    {
        .sub(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func sub(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .sub(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func summary<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .summary(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func summary<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .summary(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func summary(attributes:[Attribute] = []) -> Self 
    {
        .summary(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func summary(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .summary(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func sup<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sup(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func sup<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .sup(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func sup(attributes:[Attribute] = []) -> Self 
    {
        .sup(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func sup(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .sup(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func table<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .table(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func table<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .table(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func table(attributes:[Attribute] = []) -> Self 
    {
        .table(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func table(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .table(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func tbody<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tbody(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func tbody<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tbody(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func tbody(attributes:[Attribute] = []) -> Self 
    {
        .tbody(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func tbody(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .tbody(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func td<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .td(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func td<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .td(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func td(attributes:[Attribute] = []) -> Self 
    {
        .td(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func td(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .td(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func template<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .template(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func template<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .template(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func template(attributes:[Attribute] = []) -> Self 
    {
        .template(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func template(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .template(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func textarea<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textarea(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func textarea<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textarea(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func textarea(attributes:[Attribute] = []) -> Self 
    {
        .textarea(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func textarea(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .textarea(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func tfoot<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tfoot(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func tfoot<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tfoot(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func tfoot(attributes:[Attribute] = []) -> Self 
    {
        .tfoot(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func tfoot(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .tfoot(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func th<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .th(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func th<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .th(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func th(attributes:[Attribute] = []) -> Self 
    {
        .th(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func th(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .th(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func thead<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .thead(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func thead<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .thead(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func thead(attributes:[Attribute] = []) -> Self 
    {
        .thead(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func thead(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .thead(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func time<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .time(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func time<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .time(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func time(attributes:[Attribute] = []) -> Self 
    {
        .time(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func time(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .time(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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

extension HTML.Element 
{
    @inlinable public static 
    func tr<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tr(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func tr<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tr(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func tr(attributes:[Attribute] = []) -> Self 
    {
        .tr(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func tr(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .tr(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func u<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .u(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func u<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .u(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func u(attributes:[Attribute] = []) -> Self 
    {
        .u(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func u(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .u(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func ul<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ul(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ul<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ul(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ul(attributes:[Attribute] = []) -> Self 
    {
        .ul(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ul(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ul(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func `var`<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`var`(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func `var`<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`var`(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func `var`(attributes:[Attribute] = []) -> Self 
    {
        .`var`(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func `var`(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .`var`(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
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
    @inlinable public static 
    func video<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .video(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func video<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .video(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func video(attributes:[Attribute] = []) -> Self 
    {
        .video(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func video(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .video(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func video<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.video, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}