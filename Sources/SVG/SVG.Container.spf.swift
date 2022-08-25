import DOM 

extension SVG 
{
    @frozen public 
    enum Container:String, CustomStringConvertible, Sendable
    {
        case a
        case animate
        case animateMotion
        case animateTransform
        case circle
        case clipPath
        case defs
        case desc
        case discard
        case ellipse
        case feBlend
        case feColorMatrix
        case feComponentTransfer
        case feComposite
        case feConvolveMatrix
        case feDiffuseLighting
        case feDisplacementMap
        case feDistantLight
        case feDropShadow
        case feFlood
        case feFuncA
        case feFuncB
        case feFuncG
        case feFuncR
        case feGaussianBlur
        case feImage
        case feMerge
        case feMergeNode
        case feMorphology
        case feOffset
        case fePointLight
        case feSpecularLighting
        case feSpotLight
        case feTile
        case feTurbulence
        case filter
        case foreignObject
        case g
        case hatch
        case hatchpath
        case image
        case line
        case linearGradient
        case marker
        case mask
        case metadata
        case mpath
        case path
        case pattern
        case polygon
        case polyline
        case radialGradient
        case rect
        case script
        case set
        case stop
        case style
        case svg
        case `switch`
        case symbol
        case text
        case textPath
        case title
        case tspan
        case use
        case view

        @inlinable public 
        var description:String
        {
            self.rawValue
        }
    }
}

extension SVG.Element 
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

extension SVG.Element 
{
    @inlinable public static 
    func animate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animate(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func animate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animate(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func animate(attributes:[Attribute] = []) -> Self 
    {
        .animate(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func animate(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .animate(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func animate<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.animate, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func animateMotion<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateMotion(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func animateMotion<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateMotion(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func animateMotion(attributes:[Attribute] = []) -> Self 
    {
        .animateMotion(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func animateMotion(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .animateMotion(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func animateMotion<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.animateMotion, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func animateTransform<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateTransform(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func animateTransform<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateTransform(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func animateTransform(attributes:[Attribute] = []) -> Self 
    {
        .animateTransform(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func animateTransform(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .animateTransform(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func animateTransform<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.animateTransform, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func circle<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .circle(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func circle<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .circle(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func circle(attributes:[Attribute] = []) -> Self 
    {
        .circle(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func circle(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .circle(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func circle<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.circle, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func clipPath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .clipPath(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func clipPath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .clipPath(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func clipPath(attributes:[Attribute] = []) -> Self 
    {
        .clipPath(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func clipPath(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .clipPath(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func clipPath<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.clipPath, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func defs<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .defs(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func defs<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .defs(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func defs(attributes:[Attribute] = []) -> Self 
    {
        .defs(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func defs(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .defs(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func defs<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.defs, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func desc<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .desc(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func desc<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .desc(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func desc(attributes:[Attribute] = []) -> Self 
    {
        .desc(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func desc(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .desc(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func desc<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.desc, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func discard<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .discard(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func discard<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .discard(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func discard(attributes:[Attribute] = []) -> Self 
    {
        .discard(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func discard(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .discard(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func discard<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.discard, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func ellipse<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ellipse(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func ellipse<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ellipse(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func ellipse(attributes:[Attribute] = []) -> Self 
    {
        .ellipse(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func ellipse(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .ellipse(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func ellipse<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.ellipse, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feBlend<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feBlend(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feBlend<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feBlend(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feBlend(attributes:[Attribute] = []) -> Self 
    {
        .feBlend(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feBlend(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feBlend(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feBlend<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feBlend, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feColorMatrix<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feColorMatrix(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feColorMatrix<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feColorMatrix(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feColorMatrix(attributes:[Attribute] = []) -> Self 
    {
        .feColorMatrix(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feColorMatrix(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feColorMatrix(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feColorMatrix<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feColorMatrix, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feComponentTransfer<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComponentTransfer(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feComponentTransfer<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComponentTransfer(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feComponentTransfer(attributes:[Attribute] = []) -> Self 
    {
        .feComponentTransfer(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feComponentTransfer(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feComponentTransfer(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feComponentTransfer<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feComponentTransfer, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feComposite<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComposite(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feComposite<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComposite(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feComposite(attributes:[Attribute] = []) -> Self 
    {
        .feComposite(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feComposite(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feComposite(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feComposite<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feComposite, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feConvolveMatrix<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feConvolveMatrix(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feConvolveMatrix<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feConvolveMatrix(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feConvolveMatrix(attributes:[Attribute] = []) -> Self 
    {
        .feConvolveMatrix(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feConvolveMatrix(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feConvolveMatrix(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feConvolveMatrix<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feConvolveMatrix, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feDiffuseLighting<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDiffuseLighting(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feDiffuseLighting<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDiffuseLighting(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feDiffuseLighting(attributes:[Attribute] = []) -> Self 
    {
        .feDiffuseLighting(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feDiffuseLighting(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feDiffuseLighting(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feDiffuseLighting<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feDiffuseLighting, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feDisplacementMap<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDisplacementMap(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feDisplacementMap<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDisplacementMap(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feDisplacementMap(attributes:[Attribute] = []) -> Self 
    {
        .feDisplacementMap(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feDisplacementMap(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feDisplacementMap(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feDisplacementMap<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feDisplacementMap, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feDistantLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDistantLight(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feDistantLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDistantLight(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feDistantLight(attributes:[Attribute] = []) -> Self 
    {
        .feDistantLight(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feDistantLight(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feDistantLight(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feDistantLight<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feDistantLight, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feDropShadow<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDropShadow(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feDropShadow<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDropShadow(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feDropShadow(attributes:[Attribute] = []) -> Self 
    {
        .feDropShadow(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feDropShadow(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feDropShadow(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feDropShadow<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feDropShadow, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feFlood<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFlood(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feFlood<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFlood(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feFlood(attributes:[Attribute] = []) -> Self 
    {
        .feFlood(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feFlood(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feFlood(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feFlood<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feFlood, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feFuncA<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncA(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncA<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncA(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncA(attributes:[Attribute] = []) -> Self 
    {
        .feFuncA(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feFuncA(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feFuncA(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feFuncA<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feFuncA, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feFuncB<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncB(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncB<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncB(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncB(attributes:[Attribute] = []) -> Self 
    {
        .feFuncB(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feFuncB(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feFuncB(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feFuncB<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feFuncB, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feFuncG<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncG(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncG<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncG(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncG(attributes:[Attribute] = []) -> Self 
    {
        .feFuncG(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feFuncG(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feFuncG(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feFuncG<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feFuncG, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feFuncR<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncR(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncR<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncR(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feFuncR(attributes:[Attribute] = []) -> Self 
    {
        .feFuncR(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feFuncR(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feFuncR(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feFuncR<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feFuncR, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feGaussianBlur<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feGaussianBlur(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feGaussianBlur<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feGaussianBlur(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feGaussianBlur(attributes:[Attribute] = []) -> Self 
    {
        .feGaussianBlur(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feGaussianBlur(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feGaussianBlur(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feGaussianBlur<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feGaussianBlur, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feImage<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feImage(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feImage<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feImage(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feImage(attributes:[Attribute] = []) -> Self 
    {
        .feImage(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feImage(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feImage(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feImage<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feImage, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feMerge<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMerge(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feMerge<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMerge(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feMerge(attributes:[Attribute] = []) -> Self 
    {
        .feMerge(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feMerge(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feMerge(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feMerge<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feMerge, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feMergeNode<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMergeNode(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feMergeNode<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMergeNode(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feMergeNode(attributes:[Attribute] = []) -> Self 
    {
        .feMergeNode(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feMergeNode(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feMergeNode(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feMergeNode<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feMergeNode, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feMorphology<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMorphology(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feMorphology<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMorphology(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feMorphology(attributes:[Attribute] = []) -> Self 
    {
        .feMorphology(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feMorphology(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feMorphology(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feMorphology<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feMorphology, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feOffset<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feOffset(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feOffset<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feOffset(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feOffset(attributes:[Attribute] = []) -> Self 
    {
        .feOffset(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feOffset(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feOffset(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feOffset<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feOffset, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func fePointLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fePointLight(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func fePointLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fePointLight(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func fePointLight(attributes:[Attribute] = []) -> Self 
    {
        .fePointLight(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func fePointLight(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .fePointLight(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func fePointLight<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.fePointLight, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feSpecularLighting<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpecularLighting(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feSpecularLighting<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpecularLighting(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feSpecularLighting(attributes:[Attribute] = []) -> Self 
    {
        .feSpecularLighting(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feSpecularLighting(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feSpecularLighting(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feSpecularLighting<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feSpecularLighting, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feSpotLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpotLight(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feSpotLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpotLight(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feSpotLight(attributes:[Attribute] = []) -> Self 
    {
        .feSpotLight(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feSpotLight(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feSpotLight(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feSpotLight<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feSpotLight, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feTile<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTile(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feTile<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTile(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feTile(attributes:[Attribute] = []) -> Self 
    {
        .feTile(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feTile(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feTile(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feTile<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feTile, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func feTurbulence<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTurbulence(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func feTurbulence<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTurbulence(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func feTurbulence(attributes:[Attribute] = []) -> Self 
    {
        .feTurbulence(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func feTurbulence(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .feTurbulence(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func feTurbulence<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.feTurbulence, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func filter<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .filter(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func filter<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .filter(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func filter(attributes:[Attribute] = []) -> Self 
    {
        .filter(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func filter(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .filter(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func filter<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.filter, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func foreignObject<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .foreignObject(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func foreignObject<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .foreignObject(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func foreignObject(attributes:[Attribute] = []) -> Self 
    {
        .foreignObject(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func foreignObject(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .foreignObject(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func foreignObject<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.foreignObject, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func g<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .g(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func g<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .g(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func g(attributes:[Attribute] = []) -> Self 
    {
        .g(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func g(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .g(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func g<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.g, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func hatch<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatch(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func hatch<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatch(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func hatch(attributes:[Attribute] = []) -> Self 
    {
        .hatch(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func hatch(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .hatch(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func hatch<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.hatch, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func hatchpath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatchpath(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func hatchpath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatchpath(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func hatchpath(attributes:[Attribute] = []) -> Self 
    {
        .hatchpath(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func hatchpath(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .hatchpath(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func hatchpath<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.hatchpath, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func image<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .image(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func image<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .image(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func image(attributes:[Attribute] = []) -> Self 
    {
        .image(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func image(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .image(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func image<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.image, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func line<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .line(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func line<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .line(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func line(attributes:[Attribute] = []) -> Self 
    {
        .line(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func line(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .line(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func line<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.line, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func linearGradient<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .linearGradient(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func linearGradient<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .linearGradient(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func linearGradient(attributes:[Attribute] = []) -> Self 
    {
        .linearGradient(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func linearGradient(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .linearGradient(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func linearGradient<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.linearGradient, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func marker<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .marker(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func marker<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .marker(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func marker(attributes:[Attribute] = []) -> Self 
    {
        .marker(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func marker(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .marker(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func marker<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.marker, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func mask<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mask(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func mask<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mask(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func mask(attributes:[Attribute] = []) -> Self 
    {
        .mask(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func mask(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .mask(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func mask<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.mask, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func metadata<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .metadata(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func metadata<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .metadata(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func metadata(attributes:[Attribute] = []) -> Self 
    {
        .metadata(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func metadata(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .metadata(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func metadata<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.metadata, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func mpath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mpath(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func mpath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mpath(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func mpath(attributes:[Attribute] = []) -> Self 
    {
        .mpath(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func mpath(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .mpath(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func mpath<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.mpath, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func path<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .path(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func path<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .path(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func path(attributes:[Attribute] = []) -> Self 
    {
        .path(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func path(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .path(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func path<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.path, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func pattern<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pattern(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func pattern<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pattern(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func pattern(attributes:[Attribute] = []) -> Self 
    {
        .pattern(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func pattern(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .pattern(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func pattern<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.pattern, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func polygon<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polygon(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func polygon<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polygon(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func polygon(attributes:[Attribute] = []) -> Self 
    {
        .polygon(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func polygon(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .polygon(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func polygon<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.polygon, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func polyline<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polyline(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func polyline<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polyline(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func polyline(attributes:[Attribute] = []) -> Self 
    {
        .polyline(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func polyline(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .polyline(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func polyline<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.polyline, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func radialGradient<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .radialGradient(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func radialGradient<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .radialGradient(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func radialGradient(attributes:[Attribute] = []) -> Self 
    {
        .radialGradient(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func radialGradient(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .radialGradient(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func radialGradient<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.radialGradient, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func rect<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rect(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func rect<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rect(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func rect(attributes:[Attribute] = []) -> Self 
    {
        .rect(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func rect(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .rect(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func rect<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.rect, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
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

extension SVG.Element 
{
    @inlinable public static 
    func set<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .set(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func set<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .set(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func set(attributes:[Attribute] = []) -> Self 
    {
        .set(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func set(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .set(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func set<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.set, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func stop<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .stop(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func stop<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .stop(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func stop(attributes:[Attribute] = []) -> Self 
    {
        .stop(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func stop(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .stop(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func stop<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.stop, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
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

extension SVG.Element 
{
    @inlinable public static 
    func svg<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .svg(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func svg<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .svg(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func svg(attributes:[Attribute] = []) -> Self 
    {
        .svg(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func svg(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .svg(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func svg<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.svg, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func `switch`<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`switch`(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func `switch`<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`switch`(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func `switch`(attributes:[Attribute] = []) -> Self 
    {
        .`switch`(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func `switch`(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .`switch`(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func `switch`<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.`switch`, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func symbol<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .symbol(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func symbol<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .symbol(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func symbol(attributes:[Attribute] = []) -> Self 
    {
        .symbol(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func symbol(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .symbol(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func symbol<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.symbol, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func text<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .text(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func text<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .text(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func text(attributes:[Attribute] = []) -> Self 
    {
        .text(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func text(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .text(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func text<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.text, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func textPath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textPath(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func textPath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textPath(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func textPath(attributes:[Attribute] = []) -> Self 
    {
        .textPath(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func textPath(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .textPath(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func textPath<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.textPath, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
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

extension SVG.Element 
{
    @inlinable public static 
    func tspan<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tspan(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func tspan<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tspan(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func tspan(attributes:[Attribute] = []) -> Self 
    {
        .tspan(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func tspan(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .tspan(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func tspan<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.tspan, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func use<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .use(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func use<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .use(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func use(attributes:[Attribute] = []) -> Self 
    {
        .use(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func use(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .use(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func use<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.use, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}

extension SVG.Element 
{
    @inlinable public static 
    func view<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .view(Self.init(escaped: string), attributes: attributes)
    }
    @inlinable public static 
    func view<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .view(Self.init(string), attributes: attributes)
    }
    @inlinable public static 
    func view(attributes:[Attribute] = []) -> Self 
    {
        .view(EmptyCollection<Self>.init(), attributes: attributes)
    }
    @inlinable public static 
    func view(_ wrapped:Self, attributes:[Attribute] = []) -> Self 
    {
        .view(CollectionOfOne<Self>.init(wrapped), attributes: attributes)
    }
    @inlinable public static 
    func view<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.view, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}