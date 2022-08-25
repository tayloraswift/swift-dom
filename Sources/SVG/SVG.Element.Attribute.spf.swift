import DOM 

extension SVG.Element 
{
    /// An SVG attribute.
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
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"accent-height"` attribute, with no associated value.
    @inlinable public static 
    var accentHeight:Self 
    {
        self.init(.init(escaped: "accent-height"))
    }
    /// Returns an instance of the SVG `"accent-height"` attribute, with the given string value.
    @inlinable public static 
    func accentHeight<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accent-height", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"accumulate"` attribute, with no associated value.
    @inlinable public static 
    var accumulate:Self 
    {
        self.init(.init(escaped: "accumulate"))
    }
    /// Returns an instance of the SVG `"accumulate"` attribute, with the given string value.
    @inlinable public static 
    func accumulate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accumulate", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"additive"` attribute, with no associated value.
    @inlinable public static 
    var additive:Self 
    {
        self.init(.init(escaped: "additive"))
    }
    /// Returns an instance of the SVG `"additive"` attribute, with the given string value.
    @inlinable public static 
    func additive<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "additive", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"alignment-baseline"` attribute, with no associated value.
    @inlinable public static 
    var alignmentBaseline:Self 
    {
        self.init(.init(escaped: "alignment-baseline"))
    }
    /// Returns an instance of the SVG `"alignment-baseline"` attribute, with the given string value.
    @inlinable public static 
    func alignmentBaseline<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "alignment-baseline", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"alphabetic"` attribute, with no associated value.
    @inlinable public static 
    var alphabetic:Self 
    {
        self.init(.init(escaped: "alphabetic"))
    }
    /// Returns an instance of the SVG `"alphabetic"` attribute, with the given string value.
    @inlinable public static 
    func alphabetic<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "alphabetic", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"amplitude"` attribute, with no associated value.
    @inlinable public static 
    var amplitude:Self 
    {
        self.init(.init(escaped: "amplitude"))
    }
    /// Returns an instance of the SVG `"amplitude"` attribute, with the given string value.
    @inlinable public static 
    func amplitude<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "amplitude", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"arabic-form"` attribute, with no associated value.
    @inlinable public static 
    var arabicForm:Self 
    {
        self.init(.init(escaped: "arabic-form"))
    }
    /// Returns an instance of the SVG `"arabic-form"` attribute, with the given string value.
    @inlinable public static 
    func arabicForm<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "arabic-form", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"ascent"` attribute, with no associated value.
    @inlinable public static 
    var ascent:Self 
    {
        self.init(.init(escaped: "ascent"))
    }
    /// Returns an instance of the SVG `"ascent"` attribute, with the given string value.
    @inlinable public static 
    func ascent<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ascent", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"attributeName"` attribute, with no associated value.
    @inlinable public static 
    var attributeName:Self 
    {
        self.init(.init(escaped: "attributeName"))
    }
    /// Returns an instance of the SVG `"attributeName"` attribute, with the given string value.
    @inlinable public static 
    func attributeName<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "attributeName", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"attributeType"` attribute, with no associated value.
    @inlinable public static 
    var attributeType:Self 
    {
        self.init(.init(escaped: "attributeType"))
    }
    /// Returns an instance of the SVG `"attributeType"` attribute, with the given string value.
    @inlinable public static 
    func attributeType<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "attributeType", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"azimuth"` attribute, with no associated value.
    @inlinable public static 
    var azimuth:Self 
    {
        self.init(.init(escaped: "azimuth"))
    }
    /// Returns an instance of the SVG `"azimuth"` attribute, with the given string value.
    @inlinable public static 
    func azimuth<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "azimuth", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"baseFrequency"` attribute, with no associated value.
    @inlinable public static 
    var baseFrequency:Self 
    {
        self.init(.init(escaped: "baseFrequency"))
    }
    /// Returns an instance of the SVG `"baseFrequency"` attribute, with the given string value.
    @inlinable public static 
    func baseFrequency<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "baseFrequency", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"baseline-shift"` attribute, with no associated value.
    @inlinable public static 
    var baselineShift:Self 
    {
        self.init(.init(escaped: "baseline-shift"))
    }
    /// Returns an instance of the SVG `"baseline-shift"` attribute, with the given string value.
    @inlinable public static 
    func baselineShift<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "baseline-shift", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"baseProfile"` attribute, with no associated value.
    @inlinable public static 
    var baseProfile:Self 
    {
        self.init(.init(escaped: "baseProfile"))
    }
    /// Returns an instance of the SVG `"baseProfile"` attribute, with the given string value.
    @inlinable public static 
    func baseProfile<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "baseProfile", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"bbox"` attribute, with no associated value.
    @inlinable public static 
    var bbox:Self 
    {
        self.init(.init(escaped: "bbox"))
    }
    /// Returns an instance of the SVG `"bbox"` attribute, with the given string value.
    @inlinable public static 
    func bbox<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "bbox", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"begin"` attribute, with no associated value.
    @inlinable public static 
    var begin:Self 
    {
        self.init(.init(escaped: "begin"))
    }
    /// Returns an instance of the SVG `"begin"` attribute, with the given string value.
    @inlinable public static 
    func begin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "begin", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"bias"` attribute, with no associated value.
    @inlinable public static 
    var bias:Self 
    {
        self.init(.init(escaped: "bias"))
    }
    /// Returns an instance of the SVG `"bias"` attribute, with the given string value.
    @inlinable public static 
    func bias<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "bias", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"by"` attribute, with no associated value.
    @inlinable public static 
    var by:Self 
    {
        self.init(.init(escaped: "by"))
    }
    /// Returns an instance of the SVG `"by"` attribute, with the given string value.
    @inlinable public static 
    func by<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "by", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"calcMode"` attribute, with no associated value.
    @inlinable public static 
    var calcMode:Self 
    {
        self.init(.init(escaped: "calcMode"))
    }
    /// Returns an instance of the SVG `"calcMode"` attribute, with the given string value.
    @inlinable public static 
    func calcMode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "calcMode", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"cap-height"` attribute, with no associated value.
    @inlinable public static 
    var capHeight:Self 
    {
        self.init(.init(escaped: "cap-height"))
    }
    /// Returns an instance of the SVG `"cap-height"` attribute, with the given string value.
    @inlinable public static 
    func capHeight<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cap-height", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"class"` attribute, with no associated value.
    @inlinable public static 
    var `class`:Self 
    {
        self.init(.init(escaped: "class"))
    }
    /// Returns an instance of the SVG `"class"` attribute, with the given string value.
    @inlinable public static 
    func `class`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "class", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"clip"` attribute, with no associated value.
    @inlinable public static 
    var clip:Self 
    {
        self.init(.init(escaped: "clip"))
    }
    /// Returns an instance of the SVG `"clip"` attribute, with the given string value.
    @inlinable public static 
    func clip<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "clip", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"clipPathUnits"` attribute, with no associated value.
    @inlinable public static 
    var clipPathUnits:Self 
    {
        self.init(.init(escaped: "clipPathUnits"))
    }
    /// Returns an instance of the SVG `"clipPathUnits"` attribute, with the given string value.
    @inlinable public static 
    func clipPathUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "clipPathUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"clip-path"` attribute, with no associated value.
    @inlinable public static 
    var clipPath:Self 
    {
        self.init(.init(escaped: "clip-path"))
    }
    /// Returns an instance of the SVG `"clip-path"` attribute, with the given string value.
    @inlinable public static 
    func clipPath<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "clip-path", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"clip-rule"` attribute, with no associated value.
    @inlinable public static 
    var clipRule:Self 
    {
        self.init(.init(escaped: "clip-rule"))
    }
    /// Returns an instance of the SVG `"clip-rule"` attribute, with the given string value.
    @inlinable public static 
    func clipRule<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "clip-rule", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"color"` attribute, with no associated value.
    @inlinable public static 
    var color:Self 
    {
        self.init(.init(escaped: "color"))
    }
    /// Returns an instance of the SVG `"color"` attribute, with the given string value.
    @inlinable public static 
    func color<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"color-interpolation"` attribute, with no associated value.
    @inlinable public static 
    var colorInterpolation:Self 
    {
        self.init(.init(escaped: "color-interpolation"))
    }
    /// Returns an instance of the SVG `"color-interpolation"` attribute, with the given string value.
    @inlinable public static 
    func colorInterpolation<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color-interpolation", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"color-interpolation-filters"` attribute, with no associated value.
    @inlinable public static 
    var colorInterpolationFilters:Self 
    {
        self.init(.init(escaped: "color-interpolation-filters"))
    }
    /// Returns an instance of the SVG `"color-interpolation-filters"` attribute, with the given string value.
    @inlinable public static 
    func colorInterpolationFilters<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color-interpolation-filters", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"color-profile"` attribute, with no associated value.
    @inlinable public static 
    var colorProfile:Self 
    {
        self.init(.init(escaped: "color-profile"))
    }
    /// Returns an instance of the SVG `"color-profile"` attribute, with the given string value.
    @inlinable public static 
    func colorProfile<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color-profile", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"color-rendering"` attribute, with no associated value.
    @inlinable public static 
    var colorRendering:Self 
    {
        self.init(.init(escaped: "color-rendering"))
    }
    /// Returns an instance of the SVG `"color-rendering"` attribute, with the given string value.
    @inlinable public static 
    func colorRendering<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color-rendering", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"contentScriptType"` attribute, with no associated value.
    @inlinable public static 
    var contentScriptType:Self 
    {
        self.init(.init(escaped: "contentScriptType"))
    }
    /// Returns an instance of the SVG `"contentScriptType"` attribute, with the given string value.
    @inlinable public static 
    func contentScriptType<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contentScriptType", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"contentStyleType"` attribute, with no associated value.
    @inlinable public static 
    var contentStyleType:Self 
    {
        self.init(.init(escaped: "contentStyleType"))
    }
    /// Returns an instance of the SVG `"contentStyleType"` attribute, with the given string value.
    @inlinable public static 
    func contentStyleType<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contentStyleType", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"crossorigin"` attribute, with no associated value.
    @inlinable public static 
    var crossorigin:Self 
    {
        self.init(.init(escaped: "crossorigin"))
    }
    /// Returns an instance of the SVG `"crossorigin"` attribute, with the given string value.
    @inlinable public static 
    func crossorigin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "crossorigin", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"cursor"` attribute, with no associated value.
    @inlinable public static 
    var cursor:Self 
    {
        self.init(.init(escaped: "cursor"))
    }
    /// Returns an instance of the SVG `"cursor"` attribute, with the given string value.
    @inlinable public static 
    func cursor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cursor", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"cx"` attribute, with no associated value.
    @inlinable public static 
    var cx:Self 
    {
        self.init(.init(escaped: "cx"))
    }
    /// Returns an instance of the SVG `"cx"` attribute, with the given string value.
    @inlinable public static 
    func cx<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cx", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"cy"` attribute, with no associated value.
    @inlinable public static 
    var cy:Self 
    {
        self.init(.init(escaped: "cy"))
    }
    /// Returns an instance of the SVG `"cy"` attribute, with the given string value.
    @inlinable public static 
    func cy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cy", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"d"` attribute, with no associated value.
    @inlinable public static 
    var d:Self 
    {
        self.init(.init(escaped: "d"))
    }
    /// Returns an instance of the SVG `"d"` attribute, with the given string value.
    @inlinable public static 
    func d<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "d", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"decelerate"` attribute, with no associated value.
    @inlinable public static 
    var decelerate:Self 
    {
        self.init(.init(escaped: "decelerate"))
    }
    /// Returns an instance of the SVG `"decelerate"` attribute, with the given string value.
    @inlinable public static 
    func decelerate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "decelerate", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"descent"` attribute, with no associated value.
    @inlinable public static 
    var descent:Self 
    {
        self.init(.init(escaped: "descent"))
    }
    /// Returns an instance of the SVG `"descent"` attribute, with the given string value.
    @inlinable public static 
    func descent<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "descent", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"diffuseConstant"` attribute, with no associated value.
    @inlinable public static 
    var diffuseConstant:Self 
    {
        self.init(.init(escaped: "diffuseConstant"))
    }
    /// Returns an instance of the SVG `"diffuseConstant"` attribute, with the given string value.
    @inlinable public static 
    func diffuseConstant<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "diffuseConstant", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"direction"` attribute, with no associated value.
    @inlinable public static 
    var direction:Self 
    {
        self.init(.init(escaped: "direction"))
    }
    /// Returns an instance of the SVG `"direction"` attribute, with the given string value.
    @inlinable public static 
    func direction<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "direction", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"display"` attribute, with no associated value.
    @inlinable public static 
    var display:Self 
    {
        self.init(.init(escaped: "display"))
    }
    /// Returns an instance of the SVG `"display"` attribute, with the given string value.
    @inlinable public static 
    func display<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "display", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"divisor"` attribute, with no associated value.
    @inlinable public static 
    var divisor:Self 
    {
        self.init(.init(escaped: "divisor"))
    }
    /// Returns an instance of the SVG `"divisor"` attribute, with the given string value.
    @inlinable public static 
    func divisor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "divisor", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"dominant-baseline"` attribute, with no associated value.
    @inlinable public static 
    var dominantBaseline:Self 
    {
        self.init(.init(escaped: "dominant-baseline"))
    }
    /// Returns an instance of the SVG `"dominant-baseline"` attribute, with the given string value.
    @inlinable public static 
    func dominantBaseline<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dominant-baseline", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"dur"` attribute, with no associated value.
    @inlinable public static 
    var dur:Self 
    {
        self.init(.init(escaped: "dur"))
    }
    /// Returns an instance of the SVG `"dur"` attribute, with the given string value.
    @inlinable public static 
    func dur<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dur", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"dx"` attribute, with no associated value.
    @inlinable public static 
    var dx:Self 
    {
        self.init(.init(escaped: "dx"))
    }
    /// Returns an instance of the SVG `"dx"` attribute, with the given string value.
    @inlinable public static 
    func dx<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dx", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"dy"` attribute, with no associated value.
    @inlinable public static 
    var dy:Self 
    {
        self.init(.init(escaped: "dy"))
    }
    /// Returns an instance of the SVG `"dy"` attribute, with the given string value.
    @inlinable public static 
    func dy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dy", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"edgeMode"` attribute, with no associated value.
    @inlinable public static 
    var edgeMode:Self 
    {
        self.init(.init(escaped: "edgeMode"))
    }
    /// Returns an instance of the SVG `"edgeMode"` attribute, with the given string value.
    @inlinable public static 
    func edgeMode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "edgeMode", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"elevation"` attribute, with no associated value.
    @inlinable public static 
    var elevation:Self 
    {
        self.init(.init(escaped: "elevation"))
    }
    /// Returns an instance of the SVG `"elevation"` attribute, with the given string value.
    @inlinable public static 
    func elevation<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "elevation", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"enable-background"` attribute, with no associated value.
    @inlinable public static 
    var enableBackground:Self 
    {
        self.init(.init(escaped: "enable-background"))
    }
    /// Returns an instance of the SVG `"enable-background"` attribute, with the given string value.
    @inlinable public static 
    func enableBackground<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "enable-background", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"end"` attribute, with no associated value.
    @inlinable public static 
    var end:Self 
    {
        self.init(.init(escaped: "end"))
    }
    /// Returns an instance of the SVG `"end"` attribute, with the given string value.
    @inlinable public static 
    func end<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "end", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"exponent"` attribute, with no associated value.
    @inlinable public static 
    var exponent:Self 
    {
        self.init(.init(escaped: "exponent"))
    }
    /// Returns an instance of the SVG `"exponent"` attribute, with the given string value.
    @inlinable public static 
    func exponent<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "exponent", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fill"` attribute, with no associated value.
    @inlinable public static 
    var fill:Self 
    {
        self.init(.init(escaped: "fill"))
    }
    /// Returns an instance of the SVG `"fill"` attribute, with the given string value.
    @inlinable public static 
    func fill<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fill", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fill-opacity"` attribute, with no associated value.
    @inlinable public static 
    var fillOpacity:Self 
    {
        self.init(.init(escaped: "fill-opacity"))
    }
    /// Returns an instance of the SVG `"fill-opacity"` attribute, with the given string value.
    @inlinable public static 
    func fillOpacity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fill-opacity", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fill-rule"` attribute, with no associated value.
    @inlinable public static 
    var fillRule:Self 
    {
        self.init(.init(escaped: "fill-rule"))
    }
    /// Returns an instance of the SVG `"fill-rule"` attribute, with the given string value.
    @inlinable public static 
    func fillRule<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fill-rule", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"filter"` attribute, with no associated value.
    @inlinable public static 
    var filter:Self 
    {
        self.init(.init(escaped: "filter"))
    }
    /// Returns an instance of the SVG `"filter"` attribute, with the given string value.
    @inlinable public static 
    func filter<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "filter", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"filterRes"` attribute, with no associated value.
    @inlinable public static 
    var filterRes:Self 
    {
        self.init(.init(escaped: "filterRes"))
    }
    /// Returns an instance of the SVG `"filterRes"` attribute, with the given string value.
    @inlinable public static 
    func filterRes<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "filterRes", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"filterUnits"` attribute, with no associated value.
    @inlinable public static 
    var filterUnits:Self 
    {
        self.init(.init(escaped: "filterUnits"))
    }
    /// Returns an instance of the SVG `"filterUnits"` attribute, with the given string value.
    @inlinable public static 
    func filterUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "filterUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"flood-color"` attribute, with no associated value.
    @inlinable public static 
    var floodColor:Self 
    {
        self.init(.init(escaped: "flood-color"))
    }
    /// Returns an instance of the SVG `"flood-color"` attribute, with the given string value.
    @inlinable public static 
    func floodColor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "flood-color", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"flood-opacity"` attribute, with no associated value.
    @inlinable public static 
    var floodOpacity:Self 
    {
        self.init(.init(escaped: "flood-opacity"))
    }
    /// Returns an instance of the SVG `"flood-opacity"` attribute, with the given string value.
    @inlinable public static 
    func floodOpacity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "flood-opacity", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-family"` attribute, with no associated value.
    @inlinable public static 
    var fontFamily:Self 
    {
        self.init(.init(escaped: "font-family"))
    }
    /// Returns an instance of the SVG `"font-family"` attribute, with the given string value.
    @inlinable public static 
    func fontFamily<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-family", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-size"` attribute, with no associated value.
    @inlinable public static 
    var fontSize:Self 
    {
        self.init(.init(escaped: "font-size"))
    }
    /// Returns an instance of the SVG `"font-size"` attribute, with the given string value.
    @inlinable public static 
    func fontSize<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-size", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-size-adjust"` attribute, with no associated value.
    @inlinable public static 
    var fontSizeAdjust:Self 
    {
        self.init(.init(escaped: "font-size-adjust"))
    }
    /// Returns an instance of the SVG `"font-size-adjust"` attribute, with the given string value.
    @inlinable public static 
    func fontSizeAdjust<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-size-adjust", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-stretch"` attribute, with no associated value.
    @inlinable public static 
    var fontStretch:Self 
    {
        self.init(.init(escaped: "font-stretch"))
    }
    /// Returns an instance of the SVG `"font-stretch"` attribute, with the given string value.
    @inlinable public static 
    func fontStretch<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-stretch", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-style"` attribute, with no associated value.
    @inlinable public static 
    var fontStyle:Self 
    {
        self.init(.init(escaped: "font-style"))
    }
    /// Returns an instance of the SVG `"font-style"` attribute, with the given string value.
    @inlinable public static 
    func fontStyle<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-style", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-variant"` attribute, with no associated value.
    @inlinable public static 
    var fontVariant:Self 
    {
        self.init(.init(escaped: "font-variant"))
    }
    /// Returns an instance of the SVG `"font-variant"` attribute, with the given string value.
    @inlinable public static 
    func fontVariant<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-variant", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"font-weight"` attribute, with no associated value.
    @inlinable public static 
    var fontWeight:Self 
    {
        self.init(.init(escaped: "font-weight"))
    }
    /// Returns an instance of the SVG `"font-weight"` attribute, with the given string value.
    @inlinable public static 
    func fontWeight<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "font-weight", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"format"` attribute, with no associated value.
    @inlinable public static 
    var format:Self 
    {
        self.init(.init(escaped: "format"))
    }
    /// Returns an instance of the SVG `"format"` attribute, with the given string value.
    @inlinable public static 
    func format<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "format", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"from"` attribute, with no associated value.
    @inlinable public static 
    var from:Self 
    {
        self.init(.init(escaped: "from"))
    }
    /// Returns an instance of the SVG `"from"` attribute, with the given string value.
    @inlinable public static 
    func from<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "from", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fr"` attribute, with no associated value.
    @inlinable public static 
    var fr:Self 
    {
        self.init(.init(escaped: "fr"))
    }
    /// Returns an instance of the SVG `"fr"` attribute, with the given string value.
    @inlinable public static 
    func fr<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fr", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fx"` attribute, with no associated value.
    @inlinable public static 
    var fx:Self 
    {
        self.init(.init(escaped: "fx"))
    }
    /// Returns an instance of the SVG `"fx"` attribute, with the given string value.
    @inlinable public static 
    func fx<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fx", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"fy"` attribute, with no associated value.
    @inlinable public static 
    var fy:Self 
    {
        self.init(.init(escaped: "fy"))
    }
    /// Returns an instance of the SVG `"fy"` attribute, with the given string value.
    @inlinable public static 
    func fy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "fy", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"g1"` attribute, with no associated value.
    @inlinable public static 
    var g1:Self 
    {
        self.init(.init(escaped: "g1"))
    }
    /// Returns an instance of the SVG `"g1"` attribute, with the given string value.
    @inlinable public static 
    func g1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "g1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"g2"` attribute, with no associated value.
    @inlinable public static 
    var g2:Self 
    {
        self.init(.init(escaped: "g2"))
    }
    /// Returns an instance of the SVG `"g2"` attribute, with the given string value.
    @inlinable public static 
    func g2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "g2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"glyph-name"` attribute, with no associated value.
    @inlinable public static 
    var glyphName:Self 
    {
        self.init(.init(escaped: "glyph-name"))
    }
    /// Returns an instance of the SVG `"glyph-name"` attribute, with the given string value.
    @inlinable public static 
    func glyphName<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "glyph-name", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"glyph-orientation-horizontal"` attribute, with no associated value.
    @inlinable public static 
    var glyphOrientationHorizontal:Self 
    {
        self.init(.init(escaped: "glyph-orientation-horizontal"))
    }
    /// Returns an instance of the SVG `"glyph-orientation-horizontal"` attribute, with the given string value.
    @inlinable public static 
    func glyphOrientationHorizontal<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "glyph-orientation-horizontal", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"glyph-orientation-vertical"` attribute, with no associated value.
    @inlinable public static 
    var glyphOrientationVertical:Self 
    {
        self.init(.init(escaped: "glyph-orientation-vertical"))
    }
    /// Returns an instance of the SVG `"glyph-orientation-vertical"` attribute, with the given string value.
    @inlinable public static 
    func glyphOrientationVertical<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "glyph-orientation-vertical", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"glyphRef"` attribute, with no associated value.
    @inlinable public static 
    var glyphRef:Self 
    {
        self.init(.init(escaped: "glyphRef"))
    }
    /// Returns an instance of the SVG `"glyphRef"` attribute, with the given string value.
    @inlinable public static 
    func glyphRef<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "glyphRef", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"gradientTransform"` attribute, with no associated value.
    @inlinable public static 
    var gradientTransform:Self 
    {
        self.init(.init(escaped: "gradientTransform"))
    }
    /// Returns an instance of the SVG `"gradientTransform"` attribute, with the given string value.
    @inlinable public static 
    func gradientTransform<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "gradientTransform", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"gradientUnits"` attribute, with no associated value.
    @inlinable public static 
    var gradientUnits:Self 
    {
        self.init(.init(escaped: "gradientUnits"))
    }
    /// Returns an instance of the SVG `"gradientUnits"` attribute, with the given string value.
    @inlinable public static 
    func gradientUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "gradientUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"hanging"` attribute, with no associated value.
    @inlinable public static 
    var hanging:Self 
    {
        self.init(.init(escaped: "hanging"))
    }
    /// Returns an instance of the SVG `"hanging"` attribute, with the given string value.
    @inlinable public static 
    func hanging<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hanging", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"height"` attribute, with no associated value.
    @inlinable public static 
    var height:Self 
    {
        self.init(.init(escaped: "height"))
    }
    /// Returns an instance of the SVG `"height"` attribute, with the given string value.
    @inlinable public static 
    func height<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "height", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"href"` attribute, with no associated value.
    @inlinable public static 
    var href:Self 
    {
        self.init(.init(escaped: "href"))
    }
    /// Returns an instance of the SVG `"href"` attribute, with the given string value.
    @inlinable public static 
    func href<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "href", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"hreflang"` attribute, with no associated value.
    @inlinable public static 
    var hreflang:Self 
    {
        self.init(.init(escaped: "hreflang"))
    }
    /// Returns an instance of the SVG `"hreflang"` attribute, with the given string value.
    @inlinable public static 
    func hreflang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hreflang", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"horiz-adv-x"` attribute, with no associated value.
    @inlinable public static 
    var horizAdvX:Self 
    {
        self.init(.init(escaped: "horiz-adv-x"))
    }
    /// Returns an instance of the SVG `"horiz-adv-x"` attribute, with the given string value.
    @inlinable public static 
    func horizAdvX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "horiz-adv-x", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"horiz-origin-x"` attribute, with no associated value.
    @inlinable public static 
    var horizOriginX:Self 
    {
        self.init(.init(escaped: "horiz-origin-x"))
    }
    /// Returns an instance of the SVG `"horiz-origin-x"` attribute, with the given string value.
    @inlinable public static 
    func horizOriginX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "horiz-origin-x", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"id"` attribute, with no associated value.
    @inlinable public static 
    var id:Self 
    {
        self.init(.init(escaped: "id"))
    }
    /// Returns an instance of the SVG `"id"` attribute, with the given string value.
    @inlinable public static 
    func id<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "id", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"ideographic"` attribute, with no associated value.
    @inlinable public static 
    var ideographic:Self 
    {
        self.init(.init(escaped: "ideographic"))
    }
    /// Returns an instance of the SVG `"ideographic"` attribute, with the given string value.
    @inlinable public static 
    func ideographic<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ideographic", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"image-rendering"` attribute, with no associated value.
    @inlinable public static 
    var imageRendering:Self 
    {
        self.init(.init(escaped: "image-rendering"))
    }
    /// Returns an instance of the SVG `"image-rendering"` attribute, with the given string value.
    @inlinable public static 
    func imageRendering<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "image-rendering", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"in"` attribute, with no associated value.
    @inlinable public static 
    var `in`:Self 
    {
        self.init(.init(escaped: "in"))
    }
    /// Returns an instance of the SVG `"in"` attribute, with the given string value.
    @inlinable public static 
    func `in`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "in", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"in2"` attribute, with no associated value.
    @inlinable public static 
    var in2:Self 
    {
        self.init(.init(escaped: "in2"))
    }
    /// Returns an instance of the SVG `"in2"` attribute, with the given string value.
    @inlinable public static 
    func in2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "in2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"intercept"` attribute, with no associated value.
    @inlinable public static 
    var intercept:Self 
    {
        self.init(.init(escaped: "intercept"))
    }
    /// Returns an instance of the SVG `"intercept"` attribute, with the given string value.
    @inlinable public static 
    func intercept<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "intercept", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"k"` attribute, with no associated value.
    @inlinable public static 
    var k:Self 
    {
        self.init(.init(escaped: "k"))
    }
    /// Returns an instance of the SVG `"k"` attribute, with the given string value.
    @inlinable public static 
    func k<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "k", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"k1"` attribute, with no associated value.
    @inlinable public static 
    var k1:Self 
    {
        self.init(.init(escaped: "k1"))
    }
    /// Returns an instance of the SVG `"k1"` attribute, with the given string value.
    @inlinable public static 
    func k1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "k1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"k2"` attribute, with no associated value.
    @inlinable public static 
    var k2:Self 
    {
        self.init(.init(escaped: "k2"))
    }
    /// Returns an instance of the SVG `"k2"` attribute, with the given string value.
    @inlinable public static 
    func k2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "k2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"k3"` attribute, with no associated value.
    @inlinable public static 
    var k3:Self 
    {
        self.init(.init(escaped: "k3"))
    }
    /// Returns an instance of the SVG `"k3"` attribute, with the given string value.
    @inlinable public static 
    func k3<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "k3", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"k4"` attribute, with no associated value.
    @inlinable public static 
    var k4:Self 
    {
        self.init(.init(escaped: "k4"))
    }
    /// Returns an instance of the SVG `"k4"` attribute, with the given string value.
    @inlinable public static 
    func k4<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "k4", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"kernelMatrix"` attribute, with no associated value.
    @inlinable public static 
    var kernelMatrix:Self 
    {
        self.init(.init(escaped: "kernelMatrix"))
    }
    /// Returns an instance of the SVG `"kernelMatrix"` attribute, with the given string value.
    @inlinable public static 
    func kernelMatrix<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "kernelMatrix", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"kernelUnitLength"` attribute, with no associated value.
    @inlinable public static 
    var kernelUnitLength:Self 
    {
        self.init(.init(escaped: "kernelUnitLength"))
    }
    /// Returns an instance of the SVG `"kernelUnitLength"` attribute, with the given string value.
    @inlinable public static 
    func kernelUnitLength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "kernelUnitLength", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"kerning"` attribute, with no associated value.
    @inlinable public static 
    var kerning:Self 
    {
        self.init(.init(escaped: "kerning"))
    }
    /// Returns an instance of the SVG `"kerning"` attribute, with the given string value.
    @inlinable public static 
    func kerning<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "kerning", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"keyPoints"` attribute, with no associated value.
    @inlinable public static 
    var keyPoints:Self 
    {
        self.init(.init(escaped: "keyPoints"))
    }
    /// Returns an instance of the SVG `"keyPoints"` attribute, with the given string value.
    @inlinable public static 
    func keyPoints<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "keyPoints", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"keySplines"` attribute, with no associated value.
    @inlinable public static 
    var keySplines:Self 
    {
        self.init(.init(escaped: "keySplines"))
    }
    /// Returns an instance of the SVG `"keySplines"` attribute, with the given string value.
    @inlinable public static 
    func keySplines<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "keySplines", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"keyTimes"` attribute, with no associated value.
    @inlinable public static 
    var keyTimes:Self 
    {
        self.init(.init(escaped: "keyTimes"))
    }
    /// Returns an instance of the SVG `"keyTimes"` attribute, with the given string value.
    @inlinable public static 
    func keyTimes<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "keyTimes", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"lang"` attribute, with no associated value.
    @inlinable public static 
    var lang:Self 
    {
        self.init(.init(escaped: "lang"))
    }
    /// Returns an instance of the SVG `"lang"` attribute, with the given string value.
    @inlinable public static 
    func lang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "lang", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"lengthAdjust"` attribute, with no associated value.
    @inlinable public static 
    var lengthAdjust:Self 
    {
        self.init(.init(escaped: "lengthAdjust"))
    }
    /// Returns an instance of the SVG `"lengthAdjust"` attribute, with the given string value.
    @inlinable public static 
    func lengthAdjust<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "lengthAdjust", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"letter-spacing"` attribute, with no associated value.
    @inlinable public static 
    var letterSpacing:Self 
    {
        self.init(.init(escaped: "letter-spacing"))
    }
    /// Returns an instance of the SVG `"letter-spacing"` attribute, with the given string value.
    @inlinable public static 
    func letterSpacing<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "letter-spacing", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"lighting-color"` attribute, with no associated value.
    @inlinable public static 
    var lightingColor:Self 
    {
        self.init(.init(escaped: "lighting-color"))
    }
    /// Returns an instance of the SVG `"lighting-color"` attribute, with the given string value.
    @inlinable public static 
    func lightingColor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "lighting-color", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"limitingConeAngle"` attribute, with no associated value.
    @inlinable public static 
    var limitingConeAngle:Self 
    {
        self.init(.init(escaped: "limitingConeAngle"))
    }
    /// Returns an instance of the SVG `"limitingConeAngle"` attribute, with the given string value.
    @inlinable public static 
    func limitingConeAngle<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "limitingConeAngle", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"local"` attribute, with no associated value.
    @inlinable public static 
    var local:Self 
    {
        self.init(.init(escaped: "local"))
    }
    /// Returns an instance of the SVG `"local"` attribute, with the given string value.
    @inlinable public static 
    func local<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "local", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"marker-end"` attribute, with no associated value.
    @inlinable public static 
    var markerEnd:Self 
    {
        self.init(.init(escaped: "marker-end"))
    }
    /// Returns an instance of the SVG `"marker-end"` attribute, with the given string value.
    @inlinable public static 
    func markerEnd<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "marker-end", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"marker-mid"` attribute, with no associated value.
    @inlinable public static 
    var markerMid:Self 
    {
        self.init(.init(escaped: "marker-mid"))
    }
    /// Returns an instance of the SVG `"marker-mid"` attribute, with the given string value.
    @inlinable public static 
    func markerMid<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "marker-mid", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"marker-start"` attribute, with no associated value.
    @inlinable public static 
    var markerStart:Self 
    {
        self.init(.init(escaped: "marker-start"))
    }
    /// Returns an instance of the SVG `"marker-start"` attribute, with the given string value.
    @inlinable public static 
    func markerStart<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "marker-start", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"markerHeight"` attribute, with no associated value.
    @inlinable public static 
    var markerHeight:Self 
    {
        self.init(.init(escaped: "markerHeight"))
    }
    /// Returns an instance of the SVG `"markerHeight"` attribute, with the given string value.
    @inlinable public static 
    func markerHeight<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "markerHeight", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"markerUnits"` attribute, with no associated value.
    @inlinable public static 
    var markerUnits:Self 
    {
        self.init(.init(escaped: "markerUnits"))
    }
    /// Returns an instance of the SVG `"markerUnits"` attribute, with the given string value.
    @inlinable public static 
    func markerUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "markerUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"markerWidth"` attribute, with no associated value.
    @inlinable public static 
    var markerWidth:Self 
    {
        self.init(.init(escaped: "markerWidth"))
    }
    /// Returns an instance of the SVG `"markerWidth"` attribute, with the given string value.
    @inlinable public static 
    func markerWidth<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "markerWidth", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"mask"` attribute, with no associated value.
    @inlinable public static 
    var mask:Self 
    {
        self.init(.init(escaped: "mask"))
    }
    /// Returns an instance of the SVG `"mask"` attribute, with the given string value.
    @inlinable public static 
    func mask<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "mask", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"maskContentUnits"` attribute, with no associated value.
    @inlinable public static 
    var maskContentUnits:Self 
    {
        self.init(.init(escaped: "maskContentUnits"))
    }
    /// Returns an instance of the SVG `"maskContentUnits"` attribute, with the given string value.
    @inlinable public static 
    func maskContentUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "maskContentUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"maskUnits"` attribute, with no associated value.
    @inlinable public static 
    var maskUnits:Self 
    {
        self.init(.init(escaped: "maskUnits"))
    }
    /// Returns an instance of the SVG `"maskUnits"` attribute, with the given string value.
    @inlinable public static 
    func maskUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "maskUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"mathematical"` attribute, with no associated value.
    @inlinable public static 
    var mathematical:Self 
    {
        self.init(.init(escaped: "mathematical"))
    }
    /// Returns an instance of the SVG `"mathematical"` attribute, with the given string value.
    @inlinable public static 
    func mathematical<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "mathematical", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"max"` attribute, with no associated value.
    @inlinable public static 
    var max:Self 
    {
        self.init(.init(escaped: "max"))
    }
    /// Returns an instance of the SVG `"max"` attribute, with the given string value.
    @inlinable public static 
    func max<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "max", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"media"` attribute, with no associated value.
    @inlinable public static 
    var media:Self 
    {
        self.init(.init(escaped: "media"))
    }
    /// Returns an instance of the SVG `"media"` attribute, with the given string value.
    @inlinable public static 
    func media<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "media", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"method"` attribute, with no associated value.
    @inlinable public static 
    var method:Self 
    {
        self.init(.init(escaped: "method"))
    }
    /// Returns an instance of the SVG `"method"` attribute, with the given string value.
    @inlinable public static 
    func method<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "method", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"min"` attribute, with no associated value.
    @inlinable public static 
    var min:Self 
    {
        self.init(.init(escaped: "min"))
    }
    /// Returns an instance of the SVG `"min"` attribute, with the given string value.
    @inlinable public static 
    func min<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "min", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"mode"` attribute, with no associated value.
    @inlinable public static 
    var mode:Self 
    {
        self.init(.init(escaped: "mode"))
    }
    /// Returns an instance of the SVG `"mode"` attribute, with the given string value.
    @inlinable public static 
    func mode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "mode", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"name"` attribute, with no associated value.
    @inlinable public static 
    var name:Self 
    {
        self.init(.init(escaped: "name"))
    }
    /// Returns an instance of the SVG `"name"` attribute, with the given string value.
    @inlinable public static 
    func name<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "name", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"numOctaves"` attribute, with no associated value.
    @inlinable public static 
    var numOctaves:Self 
    {
        self.init(.init(escaped: "numOctaves"))
    }
    /// Returns an instance of the SVG `"numOctaves"` attribute, with the given string value.
    @inlinable public static 
    func numOctaves<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "numOctaves", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"offset"` attribute, with no associated value.
    @inlinable public static 
    var offset:Self 
    {
        self.init(.init(escaped: "offset"))
    }
    /// Returns an instance of the SVG `"offset"` attribute, with the given string value.
    @inlinable public static 
    func offset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "offset", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"opacity"` attribute, with no associated value.
    @inlinable public static 
    var opacity:Self 
    {
        self.init(.init(escaped: "opacity"))
    }
    /// Returns an instance of the SVG `"opacity"` attribute, with the given string value.
    @inlinable public static 
    func opacity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "opacity", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"operator"` attribute, with no associated value.
    @inlinable public static 
    var `operator`:Self 
    {
        self.init(.init(escaped: "operator"))
    }
    /// Returns an instance of the SVG `"operator"` attribute, with the given string value.
    @inlinable public static 
    func `operator`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "operator", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"order"` attribute, with no associated value.
    @inlinable public static 
    var order:Self 
    {
        self.init(.init(escaped: "order"))
    }
    /// Returns an instance of the SVG `"order"` attribute, with the given string value.
    @inlinable public static 
    func order<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "order", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"orient"` attribute, with no associated value.
    @inlinable public static 
    var orient:Self 
    {
        self.init(.init(escaped: "orient"))
    }
    /// Returns an instance of the SVG `"orient"` attribute, with the given string value.
    @inlinable public static 
    func orient<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "orient", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"orientation"` attribute, with no associated value.
    @inlinable public static 
    var orientation:Self 
    {
        self.init(.init(escaped: "orientation"))
    }
    /// Returns an instance of the SVG `"orientation"` attribute, with the given string value.
    @inlinable public static 
    func orientation<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "orientation", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"origin"` attribute, with no associated value.
    @inlinable public static 
    var origin:Self 
    {
        self.init(.init(escaped: "origin"))
    }
    /// Returns an instance of the SVG `"origin"` attribute, with the given string value.
    @inlinable public static 
    func origin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "origin", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"overflow"` attribute, with no associated value.
    @inlinable public static 
    var overflow:Self 
    {
        self.init(.init(escaped: "overflow"))
    }
    /// Returns an instance of the SVG `"overflow"` attribute, with the given string value.
    @inlinable public static 
    func overflow<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "overflow", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"overline-position"` attribute, with no associated value.
    @inlinable public static 
    var overlinePosition:Self 
    {
        self.init(.init(escaped: "overline-position"))
    }
    /// Returns an instance of the SVG `"overline-position"` attribute, with the given string value.
    @inlinable public static 
    func overlinePosition<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "overline-position", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"overline-thickness"` attribute, with no associated value.
    @inlinable public static 
    var overlineThickness:Self 
    {
        self.init(.init(escaped: "overline-thickness"))
    }
    /// Returns an instance of the SVG `"overline-thickness"` attribute, with the given string value.
    @inlinable public static 
    func overlineThickness<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "overline-thickness", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"panose-1"` attribute, with no associated value.
    @inlinable public static 
    var panose1:Self 
    {
        self.init(.init(escaped: "panose-1"))
    }
    /// Returns an instance of the SVG `"panose-1"` attribute, with the given string value.
    @inlinable public static 
    func panose1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "panose-1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"paint-order"` attribute, with no associated value.
    @inlinable public static 
    var paintOrder:Self 
    {
        self.init(.init(escaped: "paint-order"))
    }
    /// Returns an instance of the SVG `"paint-order"` attribute, with the given string value.
    @inlinable public static 
    func paintOrder<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "paint-order", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"path"` attribute, with no associated value.
    @inlinable public static 
    var path:Self 
    {
        self.init(.init(escaped: "path"))
    }
    /// Returns an instance of the SVG `"path"` attribute, with the given string value.
    @inlinable public static 
    func path<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "path", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"pathLength"` attribute, with no associated value.
    @inlinable public static 
    var pathLength:Self 
    {
        self.init(.init(escaped: "pathLength"))
    }
    /// Returns an instance of the SVG `"pathLength"` attribute, with the given string value.
    @inlinable public static 
    func pathLength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pathLength", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"patternContentUnits"` attribute, with no associated value.
    @inlinable public static 
    var patternContentUnits:Self 
    {
        self.init(.init(escaped: "patternContentUnits"))
    }
    /// Returns an instance of the SVG `"patternContentUnits"` attribute, with the given string value.
    @inlinable public static 
    func patternContentUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "patternContentUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"patternTransform"` attribute, with no associated value.
    @inlinable public static 
    var patternTransform:Self 
    {
        self.init(.init(escaped: "patternTransform"))
    }
    /// Returns an instance of the SVG `"patternTransform"` attribute, with the given string value.
    @inlinable public static 
    func patternTransform<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "patternTransform", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"patternUnits"` attribute, with no associated value.
    @inlinable public static 
    var patternUnits:Self 
    {
        self.init(.init(escaped: "patternUnits"))
    }
    /// Returns an instance of the SVG `"patternUnits"` attribute, with the given string value.
    @inlinable public static 
    func patternUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "patternUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"ping"` attribute, with no associated value.
    @inlinable public static 
    var ping:Self 
    {
        self.init(.init(escaped: "ping"))
    }
    /// Returns an instance of the SVG `"ping"` attribute, with the given string value.
    @inlinable public static 
    func ping<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ping", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"pointer-events"` attribute, with no associated value.
    @inlinable public static 
    var pointerEvents:Self 
    {
        self.init(.init(escaped: "pointer-events"))
    }
    /// Returns an instance of the SVG `"pointer-events"` attribute, with the given string value.
    @inlinable public static 
    func pointerEvents<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pointer-events", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"points"` attribute, with no associated value.
    @inlinable public static 
    var points:Self 
    {
        self.init(.init(escaped: "points"))
    }
    /// Returns an instance of the SVG `"points"` attribute, with the given string value.
    @inlinable public static 
    func points<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "points", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"pointsAtX"` attribute, with no associated value.
    @inlinable public static 
    var pointsAtX:Self 
    {
        self.init(.init(escaped: "pointsAtX"))
    }
    /// Returns an instance of the SVG `"pointsAtX"` attribute, with the given string value.
    @inlinable public static 
    func pointsAtX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pointsAtX", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"pointsAtY"` attribute, with no associated value.
    @inlinable public static 
    var pointsAtY:Self 
    {
        self.init(.init(escaped: "pointsAtY"))
    }
    /// Returns an instance of the SVG `"pointsAtY"` attribute, with the given string value.
    @inlinable public static 
    func pointsAtY<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pointsAtY", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"pointsAtZ"` attribute, with no associated value.
    @inlinable public static 
    var pointsAtZ:Self 
    {
        self.init(.init(escaped: "pointsAtZ"))
    }
    /// Returns an instance of the SVG `"pointsAtZ"` attribute, with the given string value.
    @inlinable public static 
    func pointsAtZ<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pointsAtZ", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"preserveAlpha"` attribute, with no associated value.
    @inlinable public static 
    var preserveAlpha:Self 
    {
        self.init(.init(escaped: "preserveAlpha"))
    }
    /// Returns an instance of the SVG `"preserveAlpha"` attribute, with the given string value.
    @inlinable public static 
    func preserveAlpha<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "preserveAlpha", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"preserveAspectRatio"` attribute, with no associated value.
    @inlinable public static 
    var preserveAspectRatio:Self 
    {
        self.init(.init(escaped: "preserveAspectRatio"))
    }
    /// Returns an instance of the SVG `"preserveAspectRatio"` attribute, with the given string value.
    @inlinable public static 
    func preserveAspectRatio<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "preserveAspectRatio", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"primitiveUnits"` attribute, with no associated value.
    @inlinable public static 
    var primitiveUnits:Self 
    {
        self.init(.init(escaped: "primitiveUnits"))
    }
    /// Returns an instance of the SVG `"primitiveUnits"` attribute, with the given string value.
    @inlinable public static 
    func primitiveUnits<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "primitiveUnits", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"r"` attribute, with no associated value.
    @inlinable public static 
    var r:Self 
    {
        self.init(.init(escaped: "r"))
    }
    /// Returns an instance of the SVG `"r"` attribute, with the given string value.
    @inlinable public static 
    func r<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "r", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"radius"` attribute, with no associated value.
    @inlinable public static 
    var radius:Self 
    {
        self.init(.init(escaped: "radius"))
    }
    /// Returns an instance of the SVG `"radius"` attribute, with the given string value.
    @inlinable public static 
    func radius<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "radius", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"referrerPolicy"` attribute, with no associated value.
    @inlinable public static 
    var referrerPolicy:Self 
    {
        self.init(.init(escaped: "referrerPolicy"))
    }
    /// Returns an instance of the SVG `"referrerPolicy"` attribute, with the given string value.
    @inlinable public static 
    func referrerPolicy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "referrerPolicy", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"refX"` attribute, with no associated value.
    @inlinable public static 
    var refX:Self 
    {
        self.init(.init(escaped: "refX"))
    }
    /// Returns an instance of the SVG `"refX"` attribute, with the given string value.
    @inlinable public static 
    func refX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "refX", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"refY"` attribute, with no associated value.
    @inlinable public static 
    var refY:Self 
    {
        self.init(.init(escaped: "refY"))
    }
    /// Returns an instance of the SVG `"refY"` attribute, with the given string value.
    @inlinable public static 
    func refY<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "refY", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"rel"` attribute, with no associated value.
    @inlinable public static 
    var rel:Self 
    {
        self.init(.init(escaped: "rel"))
    }
    /// Returns an instance of the SVG `"rel"` attribute, with the given string value.
    @inlinable public static 
    func rel<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rel", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"rendering-intent"` attribute, with no associated value.
    @inlinable public static 
    var renderingIntent:Self 
    {
        self.init(.init(escaped: "rendering-intent"))
    }
    /// Returns an instance of the SVG `"rendering-intent"` attribute, with the given string value.
    @inlinable public static 
    func renderingIntent<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rendering-intent", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"repeatCount"` attribute, with no associated value.
    @inlinable public static 
    var repeatCount:Self 
    {
        self.init(.init(escaped: "repeatCount"))
    }
    /// Returns an instance of the SVG `"repeatCount"` attribute, with the given string value.
    @inlinable public static 
    func repeatCount<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "repeatCount", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"repeatDur"` attribute, with no associated value.
    @inlinable public static 
    var repeatDur:Self 
    {
        self.init(.init(escaped: "repeatDur"))
    }
    /// Returns an instance of the SVG `"repeatDur"` attribute, with the given string value.
    @inlinable public static 
    func repeatDur<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "repeatDur", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"requiredExtensions"` attribute, with no associated value.
    @inlinable public static 
    var requiredExtensions:Self 
    {
        self.init(.init(escaped: "requiredExtensions"))
    }
    /// Returns an instance of the SVG `"requiredExtensions"` attribute, with the given string value.
    @inlinable public static 
    func requiredExtensions<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "requiredExtensions", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"requiredFeatures"` attribute, with no associated value.
    @inlinable public static 
    var requiredFeatures:Self 
    {
        self.init(.init(escaped: "requiredFeatures"))
    }
    /// Returns an instance of the SVG `"requiredFeatures"` attribute, with the given string value.
    @inlinable public static 
    func requiredFeatures<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "requiredFeatures", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"restart"` attribute, with no associated value.
    @inlinable public static 
    var restart:Self 
    {
        self.init(.init(escaped: "restart"))
    }
    /// Returns an instance of the SVG `"restart"` attribute, with the given string value.
    @inlinable public static 
    func restart<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "restart", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"result"` attribute, with no associated value.
    @inlinable public static 
    var result:Self 
    {
        self.init(.init(escaped: "result"))
    }
    /// Returns an instance of the SVG `"result"` attribute, with the given string value.
    @inlinable public static 
    func result<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "result", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"rotate"` attribute, with no associated value.
    @inlinable public static 
    var rotate:Self 
    {
        self.init(.init(escaped: "rotate"))
    }
    /// Returns an instance of the SVG `"rotate"` attribute, with the given string value.
    @inlinable public static 
    func rotate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rotate", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"rx"` attribute, with no associated value.
    @inlinable public static 
    var rx:Self 
    {
        self.init(.init(escaped: "rx"))
    }
    /// Returns an instance of the SVG `"rx"` attribute, with the given string value.
    @inlinable public static 
    func rx<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rx", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"ry"` attribute, with no associated value.
    @inlinable public static 
    var ry:Self 
    {
        self.init(.init(escaped: "ry"))
    }
    /// Returns an instance of the SVG `"ry"` attribute, with the given string value.
    @inlinable public static 
    func ry<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ry", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"scale"` attribute, with no associated value.
    @inlinable public static 
    var scale:Self 
    {
        self.init(.init(escaped: "scale"))
    }
    /// Returns an instance of the SVG `"scale"` attribute, with the given string value.
    @inlinable public static 
    func scale<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "scale", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"seed"` attribute, with no associated value.
    @inlinable public static 
    var seed:Self 
    {
        self.init(.init(escaped: "seed"))
    }
    /// Returns an instance of the SVG `"seed"` attribute, with the given string value.
    @inlinable public static 
    func seed<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "seed", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"shape-rendering"` attribute, with no associated value.
    @inlinable public static 
    var shapeRendering:Self 
    {
        self.init(.init(escaped: "shape-rendering"))
    }
    /// Returns an instance of the SVG `"shape-rendering"` attribute, with the given string value.
    @inlinable public static 
    func shapeRendering<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "shape-rendering", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"slope"` attribute, with no associated value.
    @inlinable public static 
    var slope:Self 
    {
        self.init(.init(escaped: "slope"))
    }
    /// Returns an instance of the SVG `"slope"` attribute, with the given string value.
    @inlinable public static 
    func slope<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "slope", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"spacing"` attribute, with no associated value.
    @inlinable public static 
    var spacing:Self 
    {
        self.init(.init(escaped: "spacing"))
    }
    /// Returns an instance of the SVG `"spacing"` attribute, with the given string value.
    @inlinable public static 
    func spacing<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "spacing", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"specularConstant"` attribute, with no associated value.
    @inlinable public static 
    var specularConstant:Self 
    {
        self.init(.init(escaped: "specularConstant"))
    }
    /// Returns an instance of the SVG `"specularConstant"` attribute, with the given string value.
    @inlinable public static 
    func specularConstant<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "specularConstant", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"specularExponent"` attribute, with no associated value.
    @inlinable public static 
    var specularExponent:Self 
    {
        self.init(.init(escaped: "specularExponent"))
    }
    /// Returns an instance of the SVG `"specularExponent"` attribute, with the given string value.
    @inlinable public static 
    func specularExponent<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "specularExponent", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"speed"` attribute, with no associated value.
    @inlinable public static 
    var speed:Self 
    {
        self.init(.init(escaped: "speed"))
    }
    /// Returns an instance of the SVG `"speed"` attribute, with the given string value.
    @inlinable public static 
    func speed<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "speed", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"spreadMethod"` attribute, with no associated value.
    @inlinable public static 
    var spreadMethod:Self 
    {
        self.init(.init(escaped: "spreadMethod"))
    }
    /// Returns an instance of the SVG `"spreadMethod"` attribute, with the given string value.
    @inlinable public static 
    func spreadMethod<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "spreadMethod", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"startOffset"` attribute, with no associated value.
    @inlinable public static 
    var startOffset:Self 
    {
        self.init(.init(escaped: "startOffset"))
    }
    /// Returns an instance of the SVG `"startOffset"` attribute, with the given string value.
    @inlinable public static 
    func startOffset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "startOffset", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stdDeviation"` attribute, with no associated value.
    @inlinable public static 
    var stdDeviation:Self 
    {
        self.init(.init(escaped: "stdDeviation"))
    }
    /// Returns an instance of the SVG `"stdDeviation"` attribute, with the given string value.
    @inlinable public static 
    func stdDeviation<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stdDeviation", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stemh"` attribute, with no associated value.
    @inlinable public static 
    var stemh:Self 
    {
        self.init(.init(escaped: "stemh"))
    }
    /// Returns an instance of the SVG `"stemh"` attribute, with the given string value.
    @inlinable public static 
    func stemh<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stemh", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stemv"` attribute, with no associated value.
    @inlinable public static 
    var stemv:Self 
    {
        self.init(.init(escaped: "stemv"))
    }
    /// Returns an instance of the SVG `"stemv"` attribute, with the given string value.
    @inlinable public static 
    func stemv<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stemv", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stitchTiles"` attribute, with no associated value.
    @inlinable public static 
    var stitchTiles:Self 
    {
        self.init(.init(escaped: "stitchTiles"))
    }
    /// Returns an instance of the SVG `"stitchTiles"` attribute, with the given string value.
    @inlinable public static 
    func stitchTiles<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stitchTiles", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stop-color"` attribute, with no associated value.
    @inlinable public static 
    var stopColor:Self 
    {
        self.init(.init(escaped: "stop-color"))
    }
    /// Returns an instance of the SVG `"stop-color"` attribute, with the given string value.
    @inlinable public static 
    func stopColor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stop-color", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stop-opacity"` attribute, with no associated value.
    @inlinable public static 
    var stopOpacity:Self 
    {
        self.init(.init(escaped: "stop-opacity"))
    }
    /// Returns an instance of the SVG `"stop-opacity"` attribute, with the given string value.
    @inlinable public static 
    func stopOpacity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stop-opacity", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"strikethrough-position"` attribute, with no associated value.
    @inlinable public static 
    var strikethroughPosition:Self 
    {
        self.init(.init(escaped: "strikethrough-position"))
    }
    /// Returns an instance of the SVG `"strikethrough-position"` attribute, with the given string value.
    @inlinable public static 
    func strikethroughPosition<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "strikethrough-position", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"strikethrough-thickness"` attribute, with no associated value.
    @inlinable public static 
    var strikethroughThickness:Self 
    {
        self.init(.init(escaped: "strikethrough-thickness"))
    }
    /// Returns an instance of the SVG `"strikethrough-thickness"` attribute, with the given string value.
    @inlinable public static 
    func strikethroughThickness<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "strikethrough-thickness", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"string"` attribute, with no associated value.
    @inlinable public static 
    var string:Self 
    {
        self.init(.init(escaped: "string"))
    }
    /// Returns an instance of the SVG `"string"` attribute, with the given string value.
    @inlinable public static 
    func string<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "string", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke"` attribute, with no associated value.
    @inlinable public static 
    var stroke:Self 
    {
        self.init(.init(escaped: "stroke"))
    }
    /// Returns an instance of the SVG `"stroke"` attribute, with the given string value.
    @inlinable public static 
    func stroke<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-dasharray"` attribute, with no associated value.
    @inlinable public static 
    var strokeDasharray:Self 
    {
        self.init(.init(escaped: "stroke-dasharray"))
    }
    /// Returns an instance of the SVG `"stroke-dasharray"` attribute, with the given string value.
    @inlinable public static 
    func strokeDasharray<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-dasharray", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-dashoffset"` attribute, with no associated value.
    @inlinable public static 
    var strokeDashoffset:Self 
    {
        self.init(.init(escaped: "stroke-dashoffset"))
    }
    /// Returns an instance of the SVG `"stroke-dashoffset"` attribute, with the given string value.
    @inlinable public static 
    func strokeDashoffset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-dashoffset", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-linecap"` attribute, with no associated value.
    @inlinable public static 
    var strokeLinecap:Self 
    {
        self.init(.init(escaped: "stroke-linecap"))
    }
    /// Returns an instance of the SVG `"stroke-linecap"` attribute, with the given string value.
    @inlinable public static 
    func strokeLinecap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-linecap", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-linejoin"` attribute, with no associated value.
    @inlinable public static 
    var strokeLinejoin:Self 
    {
        self.init(.init(escaped: "stroke-linejoin"))
    }
    /// Returns an instance of the SVG `"stroke-linejoin"` attribute, with the given string value.
    @inlinable public static 
    func strokeLinejoin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-linejoin", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-miterlimit"` attribute, with no associated value.
    @inlinable public static 
    var strokeMiterlimit:Self 
    {
        self.init(.init(escaped: "stroke-miterlimit"))
    }
    /// Returns an instance of the SVG `"stroke-miterlimit"` attribute, with the given string value.
    @inlinable public static 
    func strokeMiterlimit<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-miterlimit", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-opacity"` attribute, with no associated value.
    @inlinable public static 
    var strokeOpacity:Self 
    {
        self.init(.init(escaped: "stroke-opacity"))
    }
    /// Returns an instance of the SVG `"stroke-opacity"` attribute, with the given string value.
    @inlinable public static 
    func strokeOpacity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-opacity", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"stroke-width"` attribute, with no associated value.
    @inlinable public static 
    var strokeWidth:Self 
    {
        self.init(.init(escaped: "stroke-width"))
    }
    /// Returns an instance of the SVG `"stroke-width"` attribute, with the given string value.
    @inlinable public static 
    func strokeWidth<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "stroke-width", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"style"` attribute, with no associated value.
    @inlinable public static 
    var style:Self 
    {
        self.init(.init(escaped: "style"))
    }
    /// Returns an instance of the SVG `"style"` attribute, with the given string value.
    @inlinable public static 
    func style<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "style", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"surfaceScale"` attribute, with no associated value.
    @inlinable public static 
    var surfaceScale:Self 
    {
        self.init(.init(escaped: "surfaceScale"))
    }
    /// Returns an instance of the SVG `"surfaceScale"` attribute, with the given string value.
    @inlinable public static 
    func surfaceScale<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "surfaceScale", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"systemLanguage"` attribute, with no associated value.
    @inlinable public static 
    var systemLanguage:Self 
    {
        self.init(.init(escaped: "systemLanguage"))
    }
    /// Returns an instance of the SVG `"systemLanguage"` attribute, with the given string value.
    @inlinable public static 
    func systemLanguage<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "systemLanguage", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"tabindex"` attribute, with no associated value.
    @inlinable public static 
    var tabindex:Self 
    {
        self.init(.init(escaped: "tabindex"))
    }
    /// Returns an instance of the SVG `"tabindex"` attribute, with the given string value.
    @inlinable public static 
    func tabindex<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "tabindex", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"tableValues"` attribute, with no associated value.
    @inlinable public static 
    var tableValues:Self 
    {
        self.init(.init(escaped: "tableValues"))
    }
    /// Returns an instance of the SVG `"tableValues"` attribute, with the given string value.
    @inlinable public static 
    func tableValues<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "tableValues", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"target"` attribute, with no associated value.
    @inlinable public static 
    var target:Self 
    {
        self.init(.init(escaped: "target"))
    }
    /// Returns an instance of the SVG `"target"` attribute, with the given string value.
    @inlinable public static 
    func target<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "target", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"targetX"` attribute, with no associated value.
    @inlinable public static 
    var targetX:Self 
    {
        self.init(.init(escaped: "targetX"))
    }
    /// Returns an instance of the SVG `"targetX"` attribute, with the given string value.
    @inlinable public static 
    func targetX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "targetX", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"targetY"` attribute, with no associated value.
    @inlinable public static 
    var targetY:Self 
    {
        self.init(.init(escaped: "targetY"))
    }
    /// Returns an instance of the SVG `"targetY"` attribute, with the given string value.
    @inlinable public static 
    func targetY<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "targetY", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"text-anchor"` attribute, with no associated value.
    @inlinable public static 
    var textAnchor:Self 
    {
        self.init(.init(escaped: "text-anchor"))
    }
    /// Returns an instance of the SVG `"text-anchor"` attribute, with the given string value.
    @inlinable public static 
    func textAnchor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "text-anchor", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"text-decoration"` attribute, with no associated value.
    @inlinable public static 
    var textDecoration:Self 
    {
        self.init(.init(escaped: "text-decoration"))
    }
    /// Returns an instance of the SVG `"text-decoration"` attribute, with the given string value.
    @inlinable public static 
    func textDecoration<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "text-decoration", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"text-rendering"` attribute, with no associated value.
    @inlinable public static 
    var textRendering:Self 
    {
        self.init(.init(escaped: "text-rendering"))
    }
    /// Returns an instance of the SVG `"text-rendering"` attribute, with the given string value.
    @inlinable public static 
    func textRendering<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "text-rendering", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"textLength"` attribute, with no associated value.
    @inlinable public static 
    var textLength:Self 
    {
        self.init(.init(escaped: "textLength"))
    }
    /// Returns an instance of the SVG `"textLength"` attribute, with the given string value.
    @inlinable public static 
    func textLength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "textLength", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"to"` attribute, with no associated value.
    @inlinable public static 
    var to:Self 
    {
        self.init(.init(escaped: "to"))
    }
    /// Returns an instance of the SVG `"to"` attribute, with the given string value.
    @inlinable public static 
    func to<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "to", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"transform"` attribute, with no associated value.
    @inlinable public static 
    var transform:Self 
    {
        self.init(.init(escaped: "transform"))
    }
    /// Returns an instance of the SVG `"transform"` attribute, with the given string value.
    @inlinable public static 
    func transform<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "transform", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"transform-origin"` attribute, with no associated value.
    @inlinable public static 
    var transformOrigin:Self 
    {
        self.init(.init(escaped: "transform-origin"))
    }
    /// Returns an instance of the SVG `"transform-origin"` attribute, with the given string value.
    @inlinable public static 
    func transformOrigin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "transform-origin", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"type"` attribute, with no associated value.
    @inlinable public static 
    var type:Self 
    {
        self.init(.init(escaped: "type"))
    }
    /// Returns an instance of the SVG `"type"` attribute, with the given string value.
    @inlinable public static 
    func type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "type", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"u1"` attribute, with no associated value.
    @inlinable public static 
    var u1:Self 
    {
        self.init(.init(escaped: "u1"))
    }
    /// Returns an instance of the SVG `"u1"` attribute, with the given string value.
    @inlinable public static 
    func u1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "u1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"u2"` attribute, with no associated value.
    @inlinable public static 
    var u2:Self 
    {
        self.init(.init(escaped: "u2"))
    }
    /// Returns an instance of the SVG `"u2"` attribute, with the given string value.
    @inlinable public static 
    func u2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "u2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"underline-position"` attribute, with no associated value.
    @inlinable public static 
    var underlinePosition:Self 
    {
        self.init(.init(escaped: "underline-position"))
    }
    /// Returns an instance of the SVG `"underline-position"` attribute, with the given string value.
    @inlinable public static 
    func underlinePosition<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "underline-position", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"underline-thickness"` attribute, with no associated value.
    @inlinable public static 
    var underlineThickness:Self 
    {
        self.init(.init(escaped: "underline-thickness"))
    }
    /// Returns an instance of the SVG `"underline-thickness"` attribute, with the given string value.
    @inlinable public static 
    func underlineThickness<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "underline-thickness", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"unicode"` attribute, with no associated value.
    @inlinable public static 
    var unicode:Self 
    {
        self.init(.init(escaped: "unicode"))
    }
    /// Returns an instance of the SVG `"unicode"` attribute, with the given string value.
    @inlinable public static 
    func unicode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "unicode", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"unicode-bidi"` attribute, with no associated value.
    @inlinable public static 
    var unicodeBidi:Self 
    {
        self.init(.init(escaped: "unicode-bidi"))
    }
    /// Returns an instance of the SVG `"unicode-bidi"` attribute, with the given string value.
    @inlinable public static 
    func unicodeBidi<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "unicode-bidi", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"unicode-range"` attribute, with no associated value.
    @inlinable public static 
    var unicodeRange:Self 
    {
        self.init(.init(escaped: "unicode-range"))
    }
    /// Returns an instance of the SVG `"unicode-range"` attribute, with the given string value.
    @inlinable public static 
    func unicodeRange<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "unicode-range", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"units-per-em"` attribute, with no associated value.
    @inlinable public static 
    var unitsPerEm:Self 
    {
        self.init(.init(escaped: "units-per-em"))
    }
    /// Returns an instance of the SVG `"units-per-em"` attribute, with the given string value.
    @inlinable public static 
    func unitsPerEm<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "units-per-em", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"v-alphabetic"` attribute, with no associated value.
    @inlinable public static 
    var vAlphabetic:Self 
    {
        self.init(.init(escaped: "v-alphabetic"))
    }
    /// Returns an instance of the SVG `"v-alphabetic"` attribute, with the given string value.
    @inlinable public static 
    func vAlphabetic<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "v-alphabetic", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"v-hanging"` attribute, with no associated value.
    @inlinable public static 
    var vHanging:Self 
    {
        self.init(.init(escaped: "v-hanging"))
    }
    /// Returns an instance of the SVG `"v-hanging"` attribute, with the given string value.
    @inlinable public static 
    func vHanging<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "v-hanging", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"v-ideographic"` attribute, with no associated value.
    @inlinable public static 
    var vIdeographic:Self 
    {
        self.init(.init(escaped: "v-ideographic"))
    }
    /// Returns an instance of the SVG `"v-ideographic"` attribute, with the given string value.
    @inlinable public static 
    func vIdeographic<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "v-ideographic", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"v-mathematical"` attribute, with no associated value.
    @inlinable public static 
    var vMathematical:Self 
    {
        self.init(.init(escaped: "v-mathematical"))
    }
    /// Returns an instance of the SVG `"v-mathematical"` attribute, with the given string value.
    @inlinable public static 
    func vMathematical<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "v-mathematical", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"values"` attribute, with no associated value.
    @inlinable public static 
    var values:Self 
    {
        self.init(.init(escaped: "values"))
    }
    /// Returns an instance of the SVG `"values"` attribute, with the given string value.
    @inlinable public static 
    func values<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "values", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"vector-effect"` attribute, with no associated value.
    @inlinable public static 
    var vectorEffect:Self 
    {
        self.init(.init(escaped: "vector-effect"))
    }
    /// Returns an instance of the SVG `"vector-effect"` attribute, with the given string value.
    @inlinable public static 
    func vectorEffect<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "vector-effect", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"version"` attribute, with no associated value.
    @inlinable public static 
    var version:Self 
    {
        self.init(.init(escaped: "version"))
    }
    /// Returns an instance of the SVG `"version"` attribute, with the given string value.
    @inlinable public static 
    func version<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "version", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"vert-adv-y"` attribute, with no associated value.
    @inlinable public static 
    var vertAdvY:Self 
    {
        self.init(.init(escaped: "vert-adv-y"))
    }
    /// Returns an instance of the SVG `"vert-adv-y"` attribute, with the given string value.
    @inlinable public static 
    func vertAdvY<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "vert-adv-y", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"vert-origin-x"` attribute, with no associated value.
    @inlinable public static 
    var vertOriginX:Self 
    {
        self.init(.init(escaped: "vert-origin-x"))
    }
    /// Returns an instance of the SVG `"vert-origin-x"` attribute, with the given string value.
    @inlinable public static 
    func vertOriginX<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "vert-origin-x", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"vert-origin-y"` attribute, with no associated value.
    @inlinable public static 
    var vertOriginY:Self 
    {
        self.init(.init(escaped: "vert-origin-y"))
    }
    /// Returns an instance of the SVG `"vert-origin-y"` attribute, with the given string value.
    @inlinable public static 
    func vertOriginY<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "vert-origin-y", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"viewBox"` attribute, with no associated value.
    @inlinable public static 
    var viewBox:Self 
    {
        self.init(.init(escaped: "viewBox"))
    }
    /// Returns an instance of the SVG `"viewBox"` attribute, with the given string value.
    @inlinable public static 
    func viewBox<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "viewBox", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"viewTarget"` attribute, with no associated value.
    @inlinable public static 
    var viewTarget:Self 
    {
        self.init(.init(escaped: "viewTarget"))
    }
    /// Returns an instance of the SVG `"viewTarget"` attribute, with the given string value.
    @inlinable public static 
    func viewTarget<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "viewTarget", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"visibility"` attribute, with no associated value.
    @inlinable public static 
    var visibility:Self 
    {
        self.init(.init(escaped: "visibility"))
    }
    /// Returns an instance of the SVG `"visibility"` attribute, with the given string value.
    @inlinable public static 
    func visibility<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "visibility", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"width"` attribute, with no associated value.
    @inlinable public static 
    var width:Self 
    {
        self.init(.init(escaped: "width"))
    }
    /// Returns an instance of the SVG `"width"` attribute, with the given string value.
    @inlinable public static 
    func width<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "width", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"widths"` attribute, with no associated value.
    @inlinable public static 
    var widths:Self 
    {
        self.init(.init(escaped: "widths"))
    }
    /// Returns an instance of the SVG `"widths"` attribute, with the given string value.
    @inlinable public static 
    func widths<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "widths", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"word-spacing"` attribute, with no associated value.
    @inlinable public static 
    var wordSpacing:Self 
    {
        self.init(.init(escaped: "word-spacing"))
    }
    /// Returns an instance of the SVG `"word-spacing"` attribute, with the given string value.
    @inlinable public static 
    func wordSpacing<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "word-spacing", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"writing-mode"` attribute, with no associated value.
    @inlinable public static 
    var writingMode:Self 
    {
        self.init(.init(escaped: "writing-mode"))
    }
    /// Returns an instance of the SVG `"writing-mode"` attribute, with the given string value.
    @inlinable public static 
    func writingMode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "writing-mode", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"x"` attribute, with no associated value.
    @inlinable public static 
    var x:Self 
    {
        self.init(.init(escaped: "x"))
    }
    /// Returns an instance of the SVG `"x"` attribute, with the given string value.
    @inlinable public static 
    func x<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "x", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"x-height"` attribute, with no associated value.
    @inlinable public static 
    var xHeight:Self 
    {
        self.init(.init(escaped: "x-height"))
    }
    /// Returns an instance of the SVG `"x-height"` attribute, with the given string value.
    @inlinable public static 
    func xHeight<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "x-height", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"x1"` attribute, with no associated value.
    @inlinable public static 
    var x1:Self 
    {
        self.init(.init(escaped: "x1"))
    }
    /// Returns an instance of the SVG `"x1"` attribute, with the given string value.
    @inlinable public static 
    func x1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "x1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"x2"` attribute, with no associated value.
    @inlinable public static 
    var x2:Self 
    {
        self.init(.init(escaped: "x2"))
    }
    /// Returns an instance of the SVG `"x2"` attribute, with the given string value.
    @inlinable public static 
    func x2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "x2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xChannelSelector"` attribute, with no associated value.
    @inlinable public static 
    var xChannelSelector:Self 
    {
        self.init(.init(escaped: "xChannelSelector"))
    }
    /// Returns an instance of the SVG `"xChannelSelector"` attribute, with the given string value.
    @inlinable public static 
    func xChannelSelector<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xChannelSelector", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:actuate"` attribute, with no associated value.
    @inlinable public static 
    var xlink_actuate:Self 
    {
        self.init(.init(escaped: "xlink:actuate"))
    }
    /// Returns an instance of the SVG `"xlink:actuate"` attribute, with the given string value.
    @inlinable public static 
    func xlink_actuate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:actuate", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:arcrole"` attribute, with no associated value.
    @inlinable public static 
    var xlink_arcrole:Self 
    {
        self.init(.init(escaped: "xlink:arcrole"))
    }
    /// Returns an instance of the SVG `"xlink:arcrole"` attribute, with the given string value.
    @inlinable public static 
    func xlink_arcrole<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:arcrole", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:href"` attribute, with no associated value.
    @inlinable public static 
    var xlink_href:Self 
    {
        self.init(.init(escaped: "xlink:href"))
    }
    /// Returns an instance of the SVG `"xlink:href"` attribute, with the given string value.
    @inlinable public static 
    func xlink_href<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:href", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:role"` attribute, with no associated value.
    @inlinable public static 
    var xlink_role:Self 
    {
        self.init(.init(escaped: "xlink:role"))
    }
    /// Returns an instance of the SVG `"xlink:role"` attribute, with the given string value.
    @inlinable public static 
    func xlink_role<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:role", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:show"` attribute, with no associated value.
    @inlinable public static 
    var xlink_show:Self 
    {
        self.init(.init(escaped: "xlink:show"))
    }
    /// Returns an instance of the SVG `"xlink:show"` attribute, with the given string value.
    @inlinable public static 
    func xlink_show<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:show", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:title"` attribute, with no associated value.
    @inlinable public static 
    var xlink_title:Self 
    {
        self.init(.init(escaped: "xlink:title"))
    }
    /// Returns an instance of the SVG `"xlink:title"` attribute, with the given string value.
    @inlinable public static 
    func xlink_title<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:title", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xlink:type"` attribute, with no associated value.
    @inlinable public static 
    var xlink_type:Self 
    {
        self.init(.init(escaped: "xlink:type"))
    }
    /// Returns an instance of the SVG `"xlink:type"` attribute, with the given string value.
    @inlinable public static 
    func xlink_type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xlink:type", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xml:base"` attribute, with no associated value.
    @inlinable public static 
    var xml_base:Self 
    {
        self.init(.init(escaped: "xml:base"))
    }
    /// Returns an instance of the SVG `"xml:base"` attribute, with the given string value.
    @inlinable public static 
    func xml_base<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xml:base", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xml:lang"` attribute, with no associated value.
    @inlinable public static 
    var xml_lang:Self 
    {
        self.init(.init(escaped: "xml:lang"))
    }
    /// Returns an instance of the SVG `"xml:lang"` attribute, with the given string value.
    @inlinable public static 
    func xml_lang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xml:lang", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"xml:space"` attribute, with no associated value.
    @inlinable public static 
    var xml_space:Self 
    {
        self.init(.init(escaped: "xml:space"))
    }
    /// Returns an instance of the SVG `"xml:space"` attribute, with the given string value.
    @inlinable public static 
    func xml_space<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "xml:space", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"y"` attribute, with no associated value.
    @inlinable public static 
    var y:Self 
    {
        self.init(.init(escaped: "y"))
    }
    /// Returns an instance of the SVG `"y"` attribute, with the given string value.
    @inlinable public static 
    func y<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "y", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"y1"` attribute, with no associated value.
    @inlinable public static 
    var y1:Self 
    {
        self.init(.init(escaped: "y1"))
    }
    /// Returns an instance of the SVG `"y1"` attribute, with the given string value.
    @inlinable public static 
    func y1<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "y1", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"y2"` attribute, with no associated value.
    @inlinable public static 
    var y2:Self 
    {
        self.init(.init(escaped: "y2"))
    }
    /// Returns an instance of the SVG `"y2"` attribute, with the given string value.
    @inlinable public static 
    func y2<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "y2", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"yChannelSelector"` attribute, with no associated value.
    @inlinable public static 
    var yChannelSelector:Self 
    {
        self.init(.init(escaped: "yChannelSelector"))
    }
    /// Returns an instance of the SVG `"yChannelSelector"` attribute, with the given string value.
    @inlinable public static 
    func yChannelSelector<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "yChannelSelector", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"z"` attribute, with no associated value.
    @inlinable public static 
    var z:Self 
    {
        self.init(.init(escaped: "z"))
    }
    /// Returns an instance of the SVG `"z"` attribute, with the given string value.
    @inlinable public static 
    func z<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "z", escaped: string))
    }
}
extension SVG.Element.Attribute 
{
    /// Returns an instance of the SVG `"zoomAndPan"` attribute, with no associated value.
    @inlinable public static 
    var zoomAndPan:Self 
    {
        self.init(.init(escaped: "zoomAndPan"))
    }
    /// Returns an instance of the SVG `"zoomAndPan"` attribute, with the given string value.
    @inlinable public static 
    func zoomAndPan<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "zoomAndPan", escaped: string))
    }
}