import DOM 

extension HTML 
{
    /// An HTML element type that cannot have children.
    @frozen public 
    enum Leaf:String, CustomStringConvertible, Sendable
    {
        case area
        case base
        case br
        case col
        case hr
        case img
        case input
        case link
        case meta
        case param
        case source
        case track
        case wbr

        /// The name of this HTML leaf element.
        @inlinable public 
        var description:String
        {
            self.rawValue
        }
    }
}

extension HTML.Element 
{
    /// Creates an HTML `area` element. 
    @inlinable public static 
    var area:Self 
    {
        .area(attributes: [])
    }
    /// Creates an HTML `area` element with the given attributes. 
    @inlinable public static 
    func area(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.area, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `base` element. 
    @inlinable public static 
    var base:Self 
    {
        .base(attributes: [])
    }
    /// Creates an HTML `base` element with the given attributes. 
    @inlinable public static 
    func base(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.base, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `br` element. 
    @inlinable public static 
    var br:Self 
    {
        .br(attributes: [])
    }
    /// Creates an HTML `br` element with the given attributes. 
    @inlinable public static 
    func br(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.br, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `col` element. 
    @inlinable public static 
    var col:Self 
    {
        .col(attributes: [])
    }
    /// Creates an HTML `col` element with the given attributes. 
    @inlinable public static 
    func col(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.col, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `hr` element. 
    @inlinable public static 
    var hr:Self 
    {
        .hr(attributes: [])
    }
    /// Creates an HTML `hr` element with the given attributes. 
    @inlinable public static 
    func hr(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.hr, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `img` element. 
    @inlinable public static 
    var img:Self 
    {
        .img(attributes: [])
    }
    /// Creates an HTML `img` element with the given attributes. 
    @inlinable public static 
    func img(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.img, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `input` element. 
    @inlinable public static 
    var input:Self 
    {
        .input(attributes: [])
    }
    /// Creates an HTML `input` element with the given attributes. 
    @inlinable public static 
    func input(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.input, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `link` element. 
    @inlinable public static 
    var link:Self 
    {
        .link(attributes: [])
    }
    /// Creates an HTML `link` element with the given attributes. 
    @inlinable public static 
    func link(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.link, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `meta` element. 
    @inlinable public static 
    var meta:Self 
    {
        .meta(attributes: [])
    }
    /// Creates an HTML `meta` element with the given attributes. 
    @inlinable public static 
    func meta(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.meta, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `param` element. 
    @inlinable public static 
    var param:Self 
    {
        .param(attributes: [])
    }
    /// Creates an HTML `param` element with the given attributes. 
    @inlinable public static 
    func param(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.param, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `source` element. 
    @inlinable public static 
    var source:Self 
    {
        .source(attributes: [])
    }
    /// Creates an HTML `source` element with the given attributes. 
    @inlinable public static 
    func source(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.source, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `track` element. 
    @inlinable public static 
    var track:Self 
    {
        .track(attributes: [])
    }
    /// Creates an HTML `track` element with the given attributes. 
    @inlinable public static 
    func track(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.track, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    /// Creates an HTML `wbr` element. 
    @inlinable public static 
    var wbr:Self 
    {
        .wbr(attributes: [])
    }
    /// Creates an HTML `wbr` element with the given attributes. 
    @inlinable public static 
    func wbr(attributes:[Attribute]) -> Self 
    {
        .init(node: .leaf(.wbr, attributes: attributes.map(\.value)))
    }
}