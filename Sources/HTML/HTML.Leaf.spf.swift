import DOM 

extension HTML 
{
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
    func area(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.area, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func base(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.base, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func br(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.br, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func col(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.col, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func hr(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.hr, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func img(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.img, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func input(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.input, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func link(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.link, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func meta(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.meta, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func param(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.param, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func source(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.source, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func track(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.track, attributes: attributes.map(\.value)))
    }
}

extension HTML.Element 
{
    @inlinable public static 
    func wbr(attributes:[Attribute] = []) -> Self 
    {
        .init(node: .leaf(.wbr, attributes: attributes.map(\.value)))
    }
}