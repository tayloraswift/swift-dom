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
    /// Creates an SVG `a` element containing the given string.
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
    /// Creates an SVG `a` element containing the given string, 
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
    /// Creates an SVG `a` element with the given children. 
    @inlinable public static 
    func a(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .a(content, attributes: attributes)
    }
    /// Creates an SVG `a` element with the given content. 
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
    /// Creates an SVG `animate` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func animate<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animate(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `animate` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``animate(escaped:attributes:)``.
    @inlinable public static 
    func animate<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animate(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `animate` element with the given children. 
    @inlinable public static 
    func animate(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .animate(content, attributes: attributes)
    }
    /// Creates an SVG `animate` element with the given content. 
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
    /// Creates an SVG `animateMotion` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func animateMotion<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateMotion(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `animateMotion` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``animateMotion(escaped:attributes:)``.
    @inlinable public static 
    func animateMotion<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateMotion(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `animateMotion` element with the given children. 
    @inlinable public static 
    func animateMotion(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .animateMotion(content, attributes: attributes)
    }
    /// Creates an SVG `animateMotion` element with the given content. 
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
    /// Creates an SVG `animateTransform` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func animateTransform<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateTransform(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `animateTransform` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``animateTransform(escaped:attributes:)``.
    @inlinable public static 
    func animateTransform<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .animateTransform(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `animateTransform` element with the given children. 
    @inlinable public static 
    func animateTransform(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .animateTransform(content, attributes: attributes)
    }
    /// Creates an SVG `animateTransform` element with the given content. 
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
    /// Creates an SVG `circle` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func circle<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .circle(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `circle` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``circle(escaped:attributes:)``.
    @inlinable public static 
    func circle<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .circle(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `circle` element with the given children. 
    @inlinable public static 
    func circle(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .circle(content, attributes: attributes)
    }
    /// Creates an SVG `circle` element with the given content. 
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
    /// Creates an SVG `clipPath` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func clipPath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .clipPath(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `clipPath` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``clipPath(escaped:attributes:)``.
    @inlinable public static 
    func clipPath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .clipPath(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `clipPath` element with the given children. 
    @inlinable public static 
    func clipPath(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .clipPath(content, attributes: attributes)
    }
    /// Creates an SVG `clipPath` element with the given content. 
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
    /// Creates an SVG `defs` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func defs<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .defs(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `defs` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``defs(escaped:attributes:)``.
    @inlinable public static 
    func defs<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .defs(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `defs` element with the given children. 
    @inlinable public static 
    func defs(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .defs(content, attributes: attributes)
    }
    /// Creates an SVG `defs` element with the given content. 
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
    /// Creates an SVG `desc` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func desc<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .desc(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `desc` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``desc(escaped:attributes:)``.
    @inlinable public static 
    func desc<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .desc(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `desc` element with the given children. 
    @inlinable public static 
    func desc(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .desc(content, attributes: attributes)
    }
    /// Creates an SVG `desc` element with the given content. 
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
    /// Creates an SVG `discard` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func discard<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .discard(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `discard` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``discard(escaped:attributes:)``.
    @inlinable public static 
    func discard<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .discard(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `discard` element with the given children. 
    @inlinable public static 
    func discard(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .discard(content, attributes: attributes)
    }
    /// Creates an SVG `discard` element with the given content. 
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
    /// Creates an SVG `ellipse` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func ellipse<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ellipse(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `ellipse` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``ellipse(escaped:attributes:)``.
    @inlinable public static 
    func ellipse<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .ellipse(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `ellipse` element with the given children. 
    @inlinable public static 
    func ellipse(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .ellipse(content, attributes: attributes)
    }
    /// Creates an SVG `ellipse` element with the given content. 
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
    /// Creates an SVG `feBlend` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feBlend<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feBlend(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feBlend` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feBlend(escaped:attributes:)``.
    @inlinable public static 
    func feBlend<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feBlend(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feBlend` element with the given children. 
    @inlinable public static 
    func feBlend(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feBlend(content, attributes: attributes)
    }
    /// Creates an SVG `feBlend` element with the given content. 
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
    /// Creates an SVG `feColorMatrix` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feColorMatrix<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feColorMatrix(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feColorMatrix` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feColorMatrix(escaped:attributes:)``.
    @inlinable public static 
    func feColorMatrix<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feColorMatrix(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feColorMatrix` element with the given children. 
    @inlinable public static 
    func feColorMatrix(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feColorMatrix(content, attributes: attributes)
    }
    /// Creates an SVG `feColorMatrix` element with the given content. 
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
    /// Creates an SVG `feComponentTransfer` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feComponentTransfer<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComponentTransfer(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feComponentTransfer` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feComponentTransfer(escaped:attributes:)``.
    @inlinable public static 
    func feComponentTransfer<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComponentTransfer(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feComponentTransfer` element with the given children. 
    @inlinable public static 
    func feComponentTransfer(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feComponentTransfer(content, attributes: attributes)
    }
    /// Creates an SVG `feComponentTransfer` element with the given content. 
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
    /// Creates an SVG `feComposite` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feComposite<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComposite(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feComposite` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feComposite(escaped:attributes:)``.
    @inlinable public static 
    func feComposite<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feComposite(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feComposite` element with the given children. 
    @inlinable public static 
    func feComposite(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feComposite(content, attributes: attributes)
    }
    /// Creates an SVG `feComposite` element with the given content. 
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
    /// Creates an SVG `feConvolveMatrix` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feConvolveMatrix<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feConvolveMatrix(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feConvolveMatrix` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feConvolveMatrix(escaped:attributes:)``.
    @inlinable public static 
    func feConvolveMatrix<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feConvolveMatrix(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feConvolveMatrix` element with the given children. 
    @inlinable public static 
    func feConvolveMatrix(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feConvolveMatrix(content, attributes: attributes)
    }
    /// Creates an SVG `feConvolveMatrix` element with the given content. 
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
    /// Creates an SVG `feDiffuseLighting` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feDiffuseLighting<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDiffuseLighting(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feDiffuseLighting` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feDiffuseLighting(escaped:attributes:)``.
    @inlinable public static 
    func feDiffuseLighting<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDiffuseLighting(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feDiffuseLighting` element with the given children. 
    @inlinable public static 
    func feDiffuseLighting(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feDiffuseLighting(content, attributes: attributes)
    }
    /// Creates an SVG `feDiffuseLighting` element with the given content. 
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
    /// Creates an SVG `feDisplacementMap` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feDisplacementMap<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDisplacementMap(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feDisplacementMap` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feDisplacementMap(escaped:attributes:)``.
    @inlinable public static 
    func feDisplacementMap<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDisplacementMap(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feDisplacementMap` element with the given children. 
    @inlinable public static 
    func feDisplacementMap(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feDisplacementMap(content, attributes: attributes)
    }
    /// Creates an SVG `feDisplacementMap` element with the given content. 
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
    /// Creates an SVG `feDistantLight` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feDistantLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDistantLight(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feDistantLight` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feDistantLight(escaped:attributes:)``.
    @inlinable public static 
    func feDistantLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDistantLight(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feDistantLight` element with the given children. 
    @inlinable public static 
    func feDistantLight(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feDistantLight(content, attributes: attributes)
    }
    /// Creates an SVG `feDistantLight` element with the given content. 
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
    /// Creates an SVG `feDropShadow` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feDropShadow<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDropShadow(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feDropShadow` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feDropShadow(escaped:attributes:)``.
    @inlinable public static 
    func feDropShadow<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feDropShadow(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feDropShadow` element with the given children. 
    @inlinable public static 
    func feDropShadow(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feDropShadow(content, attributes: attributes)
    }
    /// Creates an SVG `feDropShadow` element with the given content. 
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
    /// Creates an SVG `feFlood` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feFlood<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFlood(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feFlood` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feFlood(escaped:attributes:)``.
    @inlinable public static 
    func feFlood<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFlood(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feFlood` element with the given children. 
    @inlinable public static 
    func feFlood(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feFlood(content, attributes: attributes)
    }
    /// Creates an SVG `feFlood` element with the given content. 
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
    /// Creates an SVG `feFuncA` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feFuncA<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncA(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feFuncA` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feFuncA(escaped:attributes:)``.
    @inlinable public static 
    func feFuncA<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncA(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feFuncA` element with the given children. 
    @inlinable public static 
    func feFuncA(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feFuncA(content, attributes: attributes)
    }
    /// Creates an SVG `feFuncA` element with the given content. 
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
    /// Creates an SVG `feFuncB` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feFuncB<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncB(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feFuncB` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feFuncB(escaped:attributes:)``.
    @inlinable public static 
    func feFuncB<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncB(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feFuncB` element with the given children. 
    @inlinable public static 
    func feFuncB(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feFuncB(content, attributes: attributes)
    }
    /// Creates an SVG `feFuncB` element with the given content. 
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
    /// Creates an SVG `feFuncG` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feFuncG<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncG(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feFuncG` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feFuncG(escaped:attributes:)``.
    @inlinable public static 
    func feFuncG<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncG(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feFuncG` element with the given children. 
    @inlinable public static 
    func feFuncG(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feFuncG(content, attributes: attributes)
    }
    /// Creates an SVG `feFuncG` element with the given content. 
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
    /// Creates an SVG `feFuncR` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feFuncR<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncR(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feFuncR` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feFuncR(escaped:attributes:)``.
    @inlinable public static 
    func feFuncR<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feFuncR(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feFuncR` element with the given children. 
    @inlinable public static 
    func feFuncR(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feFuncR(content, attributes: attributes)
    }
    /// Creates an SVG `feFuncR` element with the given content. 
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
    /// Creates an SVG `feGaussianBlur` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feGaussianBlur<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feGaussianBlur(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feGaussianBlur` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feGaussianBlur(escaped:attributes:)``.
    @inlinable public static 
    func feGaussianBlur<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feGaussianBlur(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feGaussianBlur` element with the given children. 
    @inlinable public static 
    func feGaussianBlur(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feGaussianBlur(content, attributes: attributes)
    }
    /// Creates an SVG `feGaussianBlur` element with the given content. 
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
    /// Creates an SVG `feImage` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feImage<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feImage(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feImage` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feImage(escaped:attributes:)``.
    @inlinable public static 
    func feImage<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feImage(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feImage` element with the given children. 
    @inlinable public static 
    func feImage(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feImage(content, attributes: attributes)
    }
    /// Creates an SVG `feImage` element with the given content. 
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
    /// Creates an SVG `feMerge` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feMerge<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMerge(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feMerge` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feMerge(escaped:attributes:)``.
    @inlinable public static 
    func feMerge<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMerge(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feMerge` element with the given children. 
    @inlinable public static 
    func feMerge(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feMerge(content, attributes: attributes)
    }
    /// Creates an SVG `feMerge` element with the given content. 
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
    /// Creates an SVG `feMergeNode` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feMergeNode<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMergeNode(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feMergeNode` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feMergeNode(escaped:attributes:)``.
    @inlinable public static 
    func feMergeNode<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMergeNode(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feMergeNode` element with the given children. 
    @inlinable public static 
    func feMergeNode(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feMergeNode(content, attributes: attributes)
    }
    /// Creates an SVG `feMergeNode` element with the given content. 
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
    /// Creates an SVG `feMorphology` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feMorphology<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMorphology(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feMorphology` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feMorphology(escaped:attributes:)``.
    @inlinable public static 
    func feMorphology<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feMorphology(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feMorphology` element with the given children. 
    @inlinable public static 
    func feMorphology(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feMorphology(content, attributes: attributes)
    }
    /// Creates an SVG `feMorphology` element with the given content. 
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
    /// Creates an SVG `feOffset` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feOffset<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feOffset(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feOffset` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feOffset(escaped:attributes:)``.
    @inlinable public static 
    func feOffset<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feOffset(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feOffset` element with the given children. 
    @inlinable public static 
    func feOffset(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feOffset(content, attributes: attributes)
    }
    /// Creates an SVG `feOffset` element with the given content. 
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
    /// Creates an SVG `fePointLight` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func fePointLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fePointLight(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `fePointLight` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``fePointLight(escaped:attributes:)``.
    @inlinable public static 
    func fePointLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .fePointLight(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `fePointLight` element with the given children. 
    @inlinable public static 
    func fePointLight(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .fePointLight(content, attributes: attributes)
    }
    /// Creates an SVG `fePointLight` element with the given content. 
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
    /// Creates an SVG `feSpecularLighting` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feSpecularLighting<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpecularLighting(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feSpecularLighting` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feSpecularLighting(escaped:attributes:)``.
    @inlinable public static 
    func feSpecularLighting<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpecularLighting(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feSpecularLighting` element with the given children. 
    @inlinable public static 
    func feSpecularLighting(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feSpecularLighting(content, attributes: attributes)
    }
    /// Creates an SVG `feSpecularLighting` element with the given content. 
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
    /// Creates an SVG `feSpotLight` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feSpotLight<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpotLight(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feSpotLight` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feSpotLight(escaped:attributes:)``.
    @inlinable public static 
    func feSpotLight<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feSpotLight(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feSpotLight` element with the given children. 
    @inlinable public static 
    func feSpotLight(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feSpotLight(content, attributes: attributes)
    }
    /// Creates an SVG `feSpotLight` element with the given content. 
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
    /// Creates an SVG `feTile` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feTile<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTile(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feTile` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feTile(escaped:attributes:)``.
    @inlinable public static 
    func feTile<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTile(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feTile` element with the given children. 
    @inlinable public static 
    func feTile(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feTile(content, attributes: attributes)
    }
    /// Creates an SVG `feTile` element with the given content. 
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
    /// Creates an SVG `feTurbulence` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func feTurbulence<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTurbulence(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `feTurbulence` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``feTurbulence(escaped:attributes:)``.
    @inlinable public static 
    func feTurbulence<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .feTurbulence(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `feTurbulence` element with the given children. 
    @inlinable public static 
    func feTurbulence(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .feTurbulence(content, attributes: attributes)
    }
    /// Creates an SVG `feTurbulence` element with the given content. 
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
    /// Creates an SVG `filter` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func filter<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .filter(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `filter` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``filter(escaped:attributes:)``.
    @inlinable public static 
    func filter<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .filter(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `filter` element with the given children. 
    @inlinable public static 
    func filter(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .filter(content, attributes: attributes)
    }
    /// Creates an SVG `filter` element with the given content. 
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
    /// Creates an SVG `foreignObject` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func foreignObject<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .foreignObject(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `foreignObject` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``foreignObject(escaped:attributes:)``.
    @inlinable public static 
    func foreignObject<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .foreignObject(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `foreignObject` element with the given children. 
    @inlinable public static 
    func foreignObject(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .foreignObject(content, attributes: attributes)
    }
    /// Creates an SVG `foreignObject` element with the given content. 
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
    /// Creates an SVG `g` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func g<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .g(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `g` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``g(escaped:attributes:)``.
    @inlinable public static 
    func g<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .g(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `g` element with the given children. 
    @inlinable public static 
    func g(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .g(content, attributes: attributes)
    }
    /// Creates an SVG `g` element with the given content. 
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
    /// Creates an SVG `hatch` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func hatch<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatch(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `hatch` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``hatch(escaped:attributes:)``.
    @inlinable public static 
    func hatch<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatch(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `hatch` element with the given children. 
    @inlinable public static 
    func hatch(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .hatch(content, attributes: attributes)
    }
    /// Creates an SVG `hatch` element with the given content. 
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
    /// Creates an SVG `hatchpath` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func hatchpath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatchpath(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `hatchpath` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``hatchpath(escaped:attributes:)``.
    @inlinable public static 
    func hatchpath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .hatchpath(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `hatchpath` element with the given children. 
    @inlinable public static 
    func hatchpath(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .hatchpath(content, attributes: attributes)
    }
    /// Creates an SVG `hatchpath` element with the given content. 
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
    /// Creates an SVG `image` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func image<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .image(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `image` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``image(escaped:attributes:)``.
    @inlinable public static 
    func image<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .image(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `image` element with the given children. 
    @inlinable public static 
    func image(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .image(content, attributes: attributes)
    }
    /// Creates an SVG `image` element with the given content. 
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
    /// Creates an SVG `line` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func line<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .line(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `line` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``line(escaped:attributes:)``.
    @inlinable public static 
    func line<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .line(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `line` element with the given children. 
    @inlinable public static 
    func line(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .line(content, attributes: attributes)
    }
    /// Creates an SVG `line` element with the given content. 
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
    /// Creates an SVG `linearGradient` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func linearGradient<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .linearGradient(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `linearGradient` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``linearGradient(escaped:attributes:)``.
    @inlinable public static 
    func linearGradient<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .linearGradient(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `linearGradient` element with the given children. 
    @inlinable public static 
    func linearGradient(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .linearGradient(content, attributes: attributes)
    }
    /// Creates an SVG `linearGradient` element with the given content. 
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
    /// Creates an SVG `marker` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func marker<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .marker(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `marker` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``marker(escaped:attributes:)``.
    @inlinable public static 
    func marker<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .marker(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `marker` element with the given children. 
    @inlinable public static 
    func marker(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .marker(content, attributes: attributes)
    }
    /// Creates an SVG `marker` element with the given content. 
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
    /// Creates an SVG `mask` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func mask<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mask(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `mask` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``mask(escaped:attributes:)``.
    @inlinable public static 
    func mask<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mask(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `mask` element with the given children. 
    @inlinable public static 
    func mask(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .mask(content, attributes: attributes)
    }
    /// Creates an SVG `mask` element with the given content. 
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
    /// Creates an SVG `metadata` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func metadata<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .metadata(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `metadata` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``metadata(escaped:attributes:)``.
    @inlinable public static 
    func metadata<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .metadata(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `metadata` element with the given children. 
    @inlinable public static 
    func metadata(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .metadata(content, attributes: attributes)
    }
    /// Creates an SVG `metadata` element with the given content. 
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
    /// Creates an SVG `mpath` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func mpath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mpath(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `mpath` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``mpath(escaped:attributes:)``.
    @inlinable public static 
    func mpath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .mpath(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `mpath` element with the given children. 
    @inlinable public static 
    func mpath(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .mpath(content, attributes: attributes)
    }
    /// Creates an SVG `mpath` element with the given content. 
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
    /// Creates an SVG `path` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func path<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .path(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `path` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``path(escaped:attributes:)``.
    @inlinable public static 
    func path<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .path(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `path` element with the given children. 
    @inlinable public static 
    func path(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .path(content, attributes: attributes)
    }
    /// Creates an SVG `path` element with the given content. 
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
    /// Creates an SVG `pattern` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func pattern<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pattern(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `pattern` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``pattern(escaped:attributes:)``.
    @inlinable public static 
    func pattern<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .pattern(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `pattern` element with the given children. 
    @inlinable public static 
    func pattern(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .pattern(content, attributes: attributes)
    }
    /// Creates an SVG `pattern` element with the given content. 
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
    /// Creates an SVG `polygon` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func polygon<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polygon(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `polygon` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``polygon(escaped:attributes:)``.
    @inlinable public static 
    func polygon<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polygon(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `polygon` element with the given children. 
    @inlinable public static 
    func polygon(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .polygon(content, attributes: attributes)
    }
    /// Creates an SVG `polygon` element with the given content. 
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
    /// Creates an SVG `polyline` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func polyline<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polyline(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `polyline` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``polyline(escaped:attributes:)``.
    @inlinable public static 
    func polyline<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .polyline(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `polyline` element with the given children. 
    @inlinable public static 
    func polyline(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .polyline(content, attributes: attributes)
    }
    /// Creates an SVG `polyline` element with the given content. 
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
    /// Creates an SVG `radialGradient` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func radialGradient<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .radialGradient(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `radialGradient` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``radialGradient(escaped:attributes:)``.
    @inlinable public static 
    func radialGradient<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .radialGradient(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `radialGradient` element with the given children. 
    @inlinable public static 
    func radialGradient(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .radialGradient(content, attributes: attributes)
    }
    /// Creates an SVG `radialGradient` element with the given content. 
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
    /// Creates an SVG `rect` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func rect<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rect(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `rect` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``rect(escaped:attributes:)``.
    @inlinable public static 
    func rect<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .rect(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `rect` element with the given children. 
    @inlinable public static 
    func rect(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .rect(content, attributes: attributes)
    }
    /// Creates an SVG `rect` element with the given content. 
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
    /// Creates an SVG `script` element containing the given string.
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
    /// Creates an SVG `script` element containing the given string, 
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
    /// Creates an SVG `script` element with the given children. 
    @inlinable public static 
    func script(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .script(content, attributes: attributes)
    }
    /// Creates an SVG `script` element with the given content. 
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
    /// Creates an SVG `set` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func set<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .set(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `set` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``set(escaped:attributes:)``.
    @inlinable public static 
    func set<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .set(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `set` element with the given children. 
    @inlinable public static 
    func set(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .set(content, attributes: attributes)
    }
    /// Creates an SVG `set` element with the given content. 
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
    /// Creates an SVG `stop` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func stop<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .stop(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `stop` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``stop(escaped:attributes:)``.
    @inlinable public static 
    func stop<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .stop(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `stop` element with the given children. 
    @inlinable public static 
    func stop(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .stop(content, attributes: attributes)
    }
    /// Creates an SVG `stop` element with the given content. 
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
    /// Creates an SVG `style` element containing the given string.
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
    /// Creates an SVG `style` element containing the given string, 
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
    /// Creates an SVG `style` element with the given children. 
    @inlinable public static 
    func style(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .style(content, attributes: attributes)
    }
    /// Creates an SVG `style` element with the given content. 
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
    /// Creates an SVG `svg` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func svg<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .svg(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `svg` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``svg(escaped:attributes:)``.
    @inlinable public static 
    func svg<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .svg(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `svg` element with the given children. 
    @inlinable public static 
    func svg(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .svg(content, attributes: attributes)
    }
    /// Creates an SVG `svg` element with the given content. 
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
    /// Creates an SVG ``switch`` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func `switch`<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`switch`(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG ``switch`` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ```switch`(escaped:attributes:)``.
    @inlinable public static 
    func `switch`<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .`switch`(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG ``switch`` element with the given children. 
    @inlinable public static 
    func `switch`(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .`switch`(content, attributes: attributes)
    }
    /// Creates an SVG ``switch`` element with the given content. 
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
    /// Creates an SVG `symbol` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func symbol<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .symbol(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `symbol` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``symbol(escaped:attributes:)``.
    @inlinable public static 
    func symbol<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .symbol(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `symbol` element with the given children. 
    @inlinable public static 
    func symbol(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .symbol(content, attributes: attributes)
    }
    /// Creates an SVG `symbol` element with the given content. 
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
    /// Creates an SVG `text` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func text<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .text(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `text` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``text(escaped:attributes:)``.
    @inlinable public static 
    func text<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .text(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `text` element with the given children. 
    @inlinable public static 
    func text(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .text(content, attributes: attributes)
    }
    /// Creates an SVG `text` element with the given content. 
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
    /// Creates an SVG `textPath` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func textPath<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textPath(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `textPath` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``textPath(escaped:attributes:)``.
    @inlinable public static 
    func textPath<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .textPath(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `textPath` element with the given children. 
    @inlinable public static 
    func textPath(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .textPath(content, attributes: attributes)
    }
    /// Creates an SVG `textPath` element with the given content. 
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
    /// Creates an SVG `title` element containing the given string.
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
    /// Creates an SVG `title` element containing the given string, 
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
    /// Creates an SVG `title` element with the given children. 
    @inlinable public static 
    func title(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .title(content, attributes: attributes)
    }
    /// Creates an SVG `title` element with the given content. 
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
    /// Creates an SVG `tspan` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func tspan<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tspan(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `tspan` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``tspan(escaped:attributes:)``.
    @inlinable public static 
    func tspan<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .tspan(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `tspan` element with the given children. 
    @inlinable public static 
    func tspan(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .tspan(content, attributes: attributes)
    }
    /// Creates an SVG `tspan` element with the given content. 
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
    /// Creates an SVG `use` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func use<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .use(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `use` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``use(escaped:attributes:)``.
    @inlinable public static 
    func use<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .use(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `use` element with the given children. 
    @inlinable public static 
    func use(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .use(content, attributes: attributes)
    }
    /// Creates an SVG `use` element with the given content. 
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
    /// Creates an SVG `view` element containing the given string.
    /// 
    /// This method does not escape the string, and should not be used to wrap 
    /// arbitrary strings. 
    @inlinable public static 
    func view<S>(escaped string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .view(Self.init(escaped: string), attributes: attributes)
    }
    /// @import(DOM)
    /// Creates an SVG `view` element containing the given string, 
    /// replacing XML structural characters with XML character entities if needed.
    /// 
    /// This method is equivalent to calling ``DOM.escape(_:)`` on `string`, and 
    /// passing it to ``view(escaped:attributes:)``.
    @inlinable public static 
    func view<S>(_ string:S, attributes:[Attribute] = []) -> Self 
        where S:StringProtocol
    {
        .view(Self.init(string), attributes: attributes)
    }
    /// Creates an SVG `view` element with the given children. 
    @inlinable public static 
    func view(_ content:Self..., attributes:[Attribute] = []) -> Self 
    {
        .view(content, attributes: attributes)
    }
    /// Creates an SVG `view` element with the given content. 
    @inlinable public static 
    func view<Content>(_ content:Content, attributes:[Attribute] = []) -> Self 
        where Content:Sequence, Content.Element == Self 
    {
        .init(node: .container(.view, 
            attributes: attributes.map(\.value), content: content.map(\.node)))
    }
}