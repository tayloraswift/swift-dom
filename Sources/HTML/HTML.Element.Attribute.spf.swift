import DOM 

extension HTML.Element 
{
    /// An HTML attribute.
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
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"accept"` attribute, with no associated value.
    @inlinable public static 
    var accept:Self 
    {
        self.init(.init(escaped: "accept"))
    }
    /// Returns an instance of the HTML `"accept"` attribute, with the given string value.
    @inlinable public static 
    func accept<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accept", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"accept-charset"` attribute, with no associated value.
    @inlinable public static 
    var acceptCharset:Self 
    {
        self.init(.init(escaped: "accept-charset"))
    }
    /// Returns an instance of the HTML `"accept-charset"` attribute, with the given string value.
    @inlinable public static 
    func acceptCharset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accept-charset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"accesskey"` attribute, with no associated value.
    @inlinable public static 
    var accesskey:Self 
    {
        self.init(.init(escaped: "accesskey"))
    }
    /// Returns an instance of the HTML `"accesskey"` attribute, with the given string value.
    @inlinable public static 
    func accesskey<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accesskey", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"action"` attribute, with no associated value.
    @inlinable public static 
    var action:Self 
    {
        self.init(.init(escaped: "action"))
    }
    /// Returns an instance of the HTML `"action"` attribute, with the given string value.
    @inlinable public static 
    func action<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "action", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"align"` attribute, with no associated value.
    @inlinable public static 
    var align:Self 
    {
        self.init(.init(escaped: "align"))
    }
    /// Returns an instance of the HTML `"align"` attribute, with the given string value.
    @inlinable public static 
    func align<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "align", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"allow"` attribute, with no associated value.
    @inlinable public static 
    var allow:Self 
    {
        self.init(.init(escaped: "allow"))
    }
    /// Returns an instance of the HTML `"allow"` attribute, with the given string value.
    @inlinable public static 
    func allow<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "allow", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"alt"` attribute, with no associated value.
    @inlinable public static 
    var alt:Self 
    {
        self.init(.init(escaped: "alt"))
    }
    /// Returns an instance of the HTML `"alt"` attribute, with the given string value.
    @inlinable public static 
    func alt<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "alt", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"async"` attribute, with no associated value.
    @inlinable public static 
    var async:Self 
    {
        self.init(.init(escaped: "async"))
    }
    /// Returns an instance of the HTML `"async"` attribute, with the given string value.
    @inlinable public static 
    func async<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "async", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"autocapitalize"` attribute, with no associated value.
    @inlinable public static 
    var autocapitalize:Self 
    {
        self.init(.init(escaped: "autocapitalize"))
    }
    /// Returns an instance of the HTML `"autocapitalize"` attribute, with the given string value.
    @inlinable public static 
    func autocapitalize<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autocapitalize", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"autocomplete"` attribute, with no associated value.
    @inlinable public static 
    var autocomplete:Self 
    {
        self.init(.init(escaped: "autocomplete"))
    }
    /// Returns an instance of the HTML `"autocomplete"` attribute, with the given string value.
    @inlinable public static 
    func autocomplete<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autocomplete", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"autofocus"` attribute, with no associated value.
    @inlinable public static 
    var autofocus:Self 
    {
        self.init(.init(escaped: "autofocus"))
    }
    /// Returns an instance of the HTML `"autofocus"` attribute, with the given string value.
    @inlinable public static 
    func autofocus<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autofocus", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"autoplay"` attribute, with no associated value.
    @inlinable public static 
    var autoplay:Self 
    {
        self.init(.init(escaped: "autoplay"))
    }
    /// Returns an instance of the HTML `"autoplay"` attribute, with the given string value.
    @inlinable public static 
    func autoplay<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autoplay", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"background"` attribute, with no associated value.
    @inlinable public static 
    var background:Self 
    {
        self.init(.init(escaped: "background"))
    }
    /// Returns an instance of the HTML `"background"` attribute, with the given string value.
    @inlinable public static 
    func background<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "background", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"bgcolor"` attribute, with no associated value.
    @inlinable public static 
    var bgcolor:Self 
    {
        self.init(.init(escaped: "bgcolor"))
    }
    /// Returns an instance of the HTML `"bgcolor"` attribute, with the given string value.
    @inlinable public static 
    func bgcolor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "bgcolor", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"border"` attribute, with no associated value.
    @inlinable public static 
    var border:Self 
    {
        self.init(.init(escaped: "border"))
    }
    /// Returns an instance of the HTML `"border"` attribute, with the given string value.
    @inlinable public static 
    func border<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "border", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"buffered"` attribute, with no associated value.
    @inlinable public static 
    var buffered:Self 
    {
        self.init(.init(escaped: "buffered"))
    }
    /// Returns an instance of the HTML `"buffered"` attribute, with the given string value.
    @inlinable public static 
    func buffered<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "buffered", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"capture"` attribute, with no associated value.
    @inlinable public static 
    var capture:Self 
    {
        self.init(.init(escaped: "capture"))
    }
    /// Returns an instance of the HTML `"capture"` attribute, with the given string value.
    @inlinable public static 
    func capture<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "capture", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"challenge"` attribute, with no associated value.
    @inlinable public static 
    var challenge:Self 
    {
        self.init(.init(escaped: "challenge"))
    }
    /// Returns an instance of the HTML `"challenge"` attribute, with the given string value.
    @inlinable public static 
    func challenge<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "challenge", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"charset"` attribute, with no associated value.
    @inlinable public static 
    var charset:Self 
    {
        self.init(.init(escaped: "charset"))
    }
    /// Returns an instance of the HTML `"charset"` attribute, with the given string value.
    @inlinable public static 
    func charset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "charset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"checked"` attribute, with no associated value.
    @inlinable public static 
    var checked:Self 
    {
        self.init(.init(escaped: "checked"))
    }
    /// Returns an instance of the HTML `"checked"` attribute, with the given string value.
    @inlinable public static 
    func checked<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "checked", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"cite"` attribute, with no associated value.
    @inlinable public static 
    var cite:Self 
    {
        self.init(.init(escaped: "cite"))
    }
    /// Returns an instance of the HTML `"cite"` attribute, with the given string value.
    @inlinable public static 
    func cite<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cite", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"class"` attribute, with no associated value.
    @inlinable public static 
    var `class`:Self 
    {
        self.init(.init(escaped: "class"))
    }
    /// Returns an instance of the HTML `"class"` attribute, with the given string value.
    @inlinable public static 
    func `class`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "class", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"code"` attribute, with no associated value.
    @inlinable public static 
    var code:Self 
    {
        self.init(.init(escaped: "code"))
    }
    /// Returns an instance of the HTML `"code"` attribute, with the given string value.
    @inlinable public static 
    func code<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "code", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"codebase"` attribute, with no associated value.
    @inlinable public static 
    var codebase:Self 
    {
        self.init(.init(escaped: "codebase"))
    }
    /// Returns an instance of the HTML `"codebase"` attribute, with the given string value.
    @inlinable public static 
    func codebase<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "codebase", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"color"` attribute, with no associated value.
    @inlinable public static 
    var color:Self 
    {
        self.init(.init(escaped: "color"))
    }
    /// Returns an instance of the HTML `"color"` attribute, with the given string value.
    @inlinable public static 
    func color<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"cols"` attribute, with no associated value.
    @inlinable public static 
    var cols:Self 
    {
        self.init(.init(escaped: "cols"))
    }
    /// Returns an instance of the HTML `"cols"` attribute, with the given string value.
    @inlinable public static 
    func cols<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cols", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"colspan"` attribute, with no associated value.
    @inlinable public static 
    var colspan:Self 
    {
        self.init(.init(escaped: "colspan"))
    }
    /// Returns an instance of the HTML `"colspan"` attribute, with the given string value.
    @inlinable public static 
    func colspan<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "colspan", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"content"` attribute, with no associated value.
    @inlinable public static 
    var content:Self 
    {
        self.init(.init(escaped: "content"))
    }
    /// Returns an instance of the HTML `"content"` attribute, with the given string value.
    @inlinable public static 
    func content<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "content", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"contenteditable"` attribute, with no associated value.
    @inlinable public static 
    var contenteditable:Self 
    {
        self.init(.init(escaped: "contenteditable"))
    }
    /// Returns an instance of the HTML `"contenteditable"` attribute, with the given string value.
    @inlinable public static 
    func contenteditable<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contenteditable", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"contextmenu"` attribute, with no associated value.
    @inlinable public static 
    var contextmenu:Self 
    {
        self.init(.init(escaped: "contextmenu"))
    }
    /// Returns an instance of the HTML `"contextmenu"` attribute, with the given string value.
    @inlinable public static 
    func contextmenu<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contextmenu", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"controls"` attribute, with no associated value.
    @inlinable public static 
    var controls:Self 
    {
        self.init(.init(escaped: "controls"))
    }
    /// Returns an instance of the HTML `"controls"` attribute, with the given string value.
    @inlinable public static 
    func controls<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "controls", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"coords"` attribute, with no associated value.
    @inlinable public static 
    var coords:Self 
    {
        self.init(.init(escaped: "coords"))
    }
    /// Returns an instance of the HTML `"coords"` attribute, with the given string value.
    @inlinable public static 
    func coords<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "coords", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"crossorigin"` attribute, with no associated value.
    @inlinable public static 
    var crossorigin:Self 
    {
        self.init(.init(escaped: "crossorigin"))
    }
    /// Returns an instance of the HTML `"crossorigin"` attribute, with the given string value.
    @inlinable public static 
    func crossorigin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "crossorigin", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"csp"` attribute, with no associated value.
    @inlinable public static 
    var csp:Self 
    {
        self.init(.init(escaped: "csp"))
    }
    /// Returns an instance of the HTML `"csp"` attribute, with the given string value.
    @inlinable public static 
    func csp<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "csp", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"data"` attribute, with no associated value.
    @inlinable public static 
    var data:Self 
    {
        self.init(.init(escaped: "data"))
    }
    /// Returns an instance of the HTML `"data"` attribute, with the given string value.
    @inlinable public static 
    func data<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "data", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"datetime"` attribute, with no associated value.
    @inlinable public static 
    var datetime:Self 
    {
        self.init(.init(escaped: "datetime"))
    }
    /// Returns an instance of the HTML `"datetime"` attribute, with the given string value.
    @inlinable public static 
    func datetime<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "datetime", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"default"` attribute, with no associated value.
    @inlinable public static 
    var `default`:Self 
    {
        self.init(.init(escaped: "default"))
    }
    /// Returns an instance of the HTML `"default"` attribute, with the given string value.
    @inlinable public static 
    func `default`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "default", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"defer"` attribute, with no associated value.
    @inlinable public static 
    var `defer`:Self 
    {
        self.init(.init(escaped: "defer"))
    }
    /// Returns an instance of the HTML `"defer"` attribute, with the given string value.
    @inlinable public static 
    func `defer`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "defer", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"dir"` attribute, with no associated value.
    @inlinable public static 
    var dir:Self 
    {
        self.init(.init(escaped: "dir"))
    }
    /// Returns an instance of the HTML `"dir"` attribute, with the given string value.
    @inlinable public static 
    func dir<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dir", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"dirname"` attribute, with no associated value.
    @inlinable public static 
    var dirname:Self 
    {
        self.init(.init(escaped: "dirname"))
    }
    /// Returns an instance of the HTML `"dirname"` attribute, with the given string value.
    @inlinable public static 
    func dirname<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dirname", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"disabled"` attribute, with no associated value.
    @inlinable public static 
    var disabled:Self 
    {
        self.init(.init(escaped: "disabled"))
    }
    /// Returns an instance of the HTML `"disabled"` attribute, with the given string value.
    @inlinable public static 
    func disabled<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "disabled", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"download"` attribute, with no associated value.
    @inlinable public static 
    var download:Self 
    {
        self.init(.init(escaped: "download"))
    }
    /// Returns an instance of the HTML `"download"` attribute, with the given string value.
    @inlinable public static 
    func download<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "download", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"draggable"` attribute, with no associated value.
    @inlinable public static 
    var draggable:Self 
    {
        self.init(.init(escaped: "draggable"))
    }
    /// Returns an instance of the HTML `"draggable"` attribute, with the given string value.
    @inlinable public static 
    func draggable<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "draggable", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"enctype"` attribute, with no associated value.
    @inlinable public static 
    var enctype:Self 
    {
        self.init(.init(escaped: "enctype"))
    }
    /// Returns an instance of the HTML `"enctype"` attribute, with the given string value.
    @inlinable public static 
    func enctype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "enctype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"enterkeykint"` attribute, with no associated value.
    @inlinable public static 
    var enterkeykint:Self 
    {
        self.init(.init(escaped: "enterkeykint"))
    }
    /// Returns an instance of the HTML `"enterkeykint"` attribute, with the given string value.
    @inlinable public static 
    func enterkeykint<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "enterkeykint", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"for"` attribute, with no associated value.
    @inlinable public static 
    var `for`:Self 
    {
        self.init(.init(escaped: "for"))
    }
    /// Returns an instance of the HTML `"for"` attribute, with the given string value.
    @inlinable public static 
    func `for`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "for", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"form"` attribute, with no associated value.
    @inlinable public static 
    var form:Self 
    {
        self.init(.init(escaped: "form"))
    }
    /// Returns an instance of the HTML `"form"` attribute, with the given string value.
    @inlinable public static 
    func form<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "form", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"formaction"` attribute, with no associated value.
    @inlinable public static 
    var formaction:Self 
    {
        self.init(.init(escaped: "formaction"))
    }
    /// Returns an instance of the HTML `"formaction"` attribute, with the given string value.
    @inlinable public static 
    func formaction<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formaction", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"formenctype"` attribute, with no associated value.
    @inlinable public static 
    var formenctype:Self 
    {
        self.init(.init(escaped: "formenctype"))
    }
    /// Returns an instance of the HTML `"formenctype"` attribute, with the given string value.
    @inlinable public static 
    func formenctype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formenctype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"formmethod"` attribute, with no associated value.
    @inlinable public static 
    var formmethod:Self 
    {
        self.init(.init(escaped: "formmethod"))
    }
    /// Returns an instance of the HTML `"formmethod"` attribute, with the given string value.
    @inlinable public static 
    func formmethod<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formmethod", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"formnovalidate"` attribute, with no associated value.
    @inlinable public static 
    var formnovalidate:Self 
    {
        self.init(.init(escaped: "formnovalidate"))
    }
    /// Returns an instance of the HTML `"formnovalidate"` attribute, with the given string value.
    @inlinable public static 
    func formnovalidate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formnovalidate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"formtarget"` attribute, with no associated value.
    @inlinable public static 
    var formtarget:Self 
    {
        self.init(.init(escaped: "formtarget"))
    }
    /// Returns an instance of the HTML `"formtarget"` attribute, with the given string value.
    @inlinable public static 
    func formtarget<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formtarget", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"headers"` attribute, with no associated value.
    @inlinable public static 
    var headers:Self 
    {
        self.init(.init(escaped: "headers"))
    }
    /// Returns an instance of the HTML `"headers"` attribute, with the given string value.
    @inlinable public static 
    func headers<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "headers", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"height"` attribute, with no associated value.
    @inlinable public static 
    var height:Self 
    {
        self.init(.init(escaped: "height"))
    }
    /// Returns an instance of the HTML `"height"` attribute, with the given string value.
    @inlinable public static 
    func height<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "height", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"hidden"` attribute, with no associated value.
    @inlinable public static 
    var hidden:Self 
    {
        self.init(.init(escaped: "hidden"))
    }
    /// Returns an instance of the HTML `"hidden"` attribute, with the given string value.
    @inlinable public static 
    func hidden<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hidden", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"high"` attribute, with no associated value.
    @inlinable public static 
    var high:Self 
    {
        self.init(.init(escaped: "high"))
    }
    /// Returns an instance of the HTML `"high"` attribute, with the given string value.
    @inlinable public static 
    func high<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "high", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"href"` attribute, with no associated value.
    @inlinable public static 
    var href:Self 
    {
        self.init(.init(escaped: "href"))
    }
    /// Returns an instance of the HTML `"href"` attribute, with the given string value.
    @inlinable public static 
    func href<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "href", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"hreflang"` attribute, with no associated value.
    @inlinable public static 
    var hreflang:Self 
    {
        self.init(.init(escaped: "hreflang"))
    }
    /// Returns an instance of the HTML `"hreflang"` attribute, with the given string value.
    @inlinable public static 
    func hreflang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hreflang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"http-equiv"` attribute, with no associated value.
    @inlinable public static 
    var httpEquiv:Self 
    {
        self.init(.init(escaped: "http-equiv"))
    }
    /// Returns an instance of the HTML `"http-equiv"` attribute, with the given string value.
    @inlinable public static 
    func httpEquiv<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "http-equiv", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"icon"` attribute, with no associated value.
    @inlinable public static 
    var icon:Self 
    {
        self.init(.init(escaped: "icon"))
    }
    /// Returns an instance of the HTML `"icon"` attribute, with the given string value.
    @inlinable public static 
    func icon<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "icon", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"id"` attribute, with no associated value.
    @inlinable public static 
    var id:Self 
    {
        self.init(.init(escaped: "id"))
    }
    /// Returns an instance of the HTML `"id"` attribute, with the given string value.
    @inlinable public static 
    func id<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "id", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"importance"` attribute, with no associated value.
    @inlinable public static 
    var importance:Self 
    {
        self.init(.init(escaped: "importance"))
    }
    /// Returns an instance of the HTML `"importance"` attribute, with the given string value.
    @inlinable public static 
    func importance<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "importance", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"integrity"` attribute, with no associated value.
    @inlinable public static 
    var integrity:Self 
    {
        self.init(.init(escaped: "integrity"))
    }
    /// Returns an instance of the HTML `"integrity"` attribute, with the given string value.
    @inlinable public static 
    func integrity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "integrity", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"intrinsicsize"` attribute, with no associated value.
    @inlinable public static 
    var intrinsicsize:Self 
    {
        self.init(.init(escaped: "intrinsicsize"))
    }
    /// Returns an instance of the HTML `"intrinsicsize"` attribute, with the given string value.
    @inlinable public static 
    func intrinsicsize<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "intrinsicsize", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"inputmode"` attribute, with no associated value.
    @inlinable public static 
    var inputmode:Self 
    {
        self.init(.init(escaped: "inputmode"))
    }
    /// Returns an instance of the HTML `"inputmode"` attribute, with the given string value.
    @inlinable public static 
    func inputmode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "inputmode", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"ismap"` attribute, with no associated value.
    @inlinable public static 
    var ismap:Self 
    {
        self.init(.init(escaped: "ismap"))
    }
    /// Returns an instance of the HTML `"ismap"` attribute, with the given string value.
    @inlinable public static 
    func ismap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ismap", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"itemprop"` attribute, with no associated value.
    @inlinable public static 
    var itemprop:Self 
    {
        self.init(.init(escaped: "itemprop"))
    }
    /// Returns an instance of the HTML `"itemprop"` attribute, with the given string value.
    @inlinable public static 
    func itemprop<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "itemprop", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"keytype"` attribute, with no associated value.
    @inlinable public static 
    var keytype:Self 
    {
        self.init(.init(escaped: "keytype"))
    }
    /// Returns an instance of the HTML `"keytype"` attribute, with the given string value.
    @inlinable public static 
    func keytype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "keytype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"kind"` attribute, with no associated value.
    @inlinable public static 
    var kind:Self 
    {
        self.init(.init(escaped: "kind"))
    }
    /// Returns an instance of the HTML `"kind"` attribute, with the given string value.
    @inlinable public static 
    func kind<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "kind", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"label"` attribute, with no associated value.
    @inlinable public static 
    var label:Self 
    {
        self.init(.init(escaped: "label"))
    }
    /// Returns an instance of the HTML `"label"` attribute, with the given string value.
    @inlinable public static 
    func label<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "label", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"lang"` attribute, with no associated value.
    @inlinable public static 
    var lang:Self 
    {
        self.init(.init(escaped: "lang"))
    }
    /// Returns an instance of the HTML `"lang"` attribute, with the given string value.
    @inlinable public static 
    func lang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "lang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"language"` attribute, with no associated value.
    @inlinable public static 
    var language:Self 
    {
        self.init(.init(escaped: "language"))
    }
    /// Returns an instance of the HTML `"language"` attribute, with the given string value.
    @inlinable public static 
    func language<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "language", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"loading"` attribute, with no associated value.
    @inlinable public static 
    var loading:Self 
    {
        self.init(.init(escaped: "loading"))
    }
    /// Returns an instance of the HTML `"loading"` attribute, with the given string value.
    @inlinable public static 
    func loading<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "loading", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"list"` attribute, with no associated value.
    @inlinable public static 
    var list:Self 
    {
        self.init(.init(escaped: "list"))
    }
    /// Returns an instance of the HTML `"list"` attribute, with the given string value.
    @inlinable public static 
    func list<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "list", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"loop"` attribute, with no associated value.
    @inlinable public static 
    var loop:Self 
    {
        self.init(.init(escaped: "loop"))
    }
    /// Returns an instance of the HTML `"loop"` attribute, with the given string value.
    @inlinable public static 
    func loop<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "loop", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"low"` attribute, with no associated value.
    @inlinable public static 
    var low:Self 
    {
        self.init(.init(escaped: "low"))
    }
    /// Returns an instance of the HTML `"low"` attribute, with the given string value.
    @inlinable public static 
    func low<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "low", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"manifest"` attribute, with no associated value.
    @inlinable public static 
    var manifest:Self 
    {
        self.init(.init(escaped: "manifest"))
    }
    /// Returns an instance of the HTML `"manifest"` attribute, with the given string value.
    @inlinable public static 
    func manifest<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "manifest", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"max"` attribute, with no associated value.
    @inlinable public static 
    var max:Self 
    {
        self.init(.init(escaped: "max"))
    }
    /// Returns an instance of the HTML `"max"` attribute, with the given string value.
    @inlinable public static 
    func max<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "max", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"maxlength"` attribute, with no associated value.
    @inlinable public static 
    var maxlength:Self 
    {
        self.init(.init(escaped: "maxlength"))
    }
    /// Returns an instance of the HTML `"maxlength"` attribute, with the given string value.
    @inlinable public static 
    func maxlength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "maxlength", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"minlength"` attribute, with no associated value.
    @inlinable public static 
    var minlength:Self 
    {
        self.init(.init(escaped: "minlength"))
    }
    /// Returns an instance of the HTML `"minlength"` attribute, with the given string value.
    @inlinable public static 
    func minlength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "minlength", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"media"` attribute, with no associated value.
    @inlinable public static 
    var media:Self 
    {
        self.init(.init(escaped: "media"))
    }
    /// Returns an instance of the HTML `"media"` attribute, with the given string value.
    @inlinable public static 
    func media<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "media", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"method"` attribute, with no associated value.
    @inlinable public static 
    var method:Self 
    {
        self.init(.init(escaped: "method"))
    }
    /// Returns an instance of the HTML `"method"` attribute, with the given string value.
    @inlinable public static 
    func method<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "method", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"min"` attribute, with no associated value.
    @inlinable public static 
    var min:Self 
    {
        self.init(.init(escaped: "min"))
    }
    /// Returns an instance of the HTML `"min"` attribute, with the given string value.
    @inlinable public static 
    func min<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "min", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"multiple"` attribute, with no associated value.
    @inlinable public static 
    var multiple:Self 
    {
        self.init(.init(escaped: "multiple"))
    }
    /// Returns an instance of the HTML `"multiple"` attribute, with the given string value.
    @inlinable public static 
    func multiple<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "multiple", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"muted"` attribute, with no associated value.
    @inlinable public static 
    var muted:Self 
    {
        self.init(.init(escaped: "muted"))
    }
    /// Returns an instance of the HTML `"muted"` attribute, with the given string value.
    @inlinable public static 
    func muted<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "muted", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"name"` attribute, with no associated value.
    @inlinable public static 
    var name:Self 
    {
        self.init(.init(escaped: "name"))
    }
    /// Returns an instance of the HTML `"name"` attribute, with the given string value.
    @inlinable public static 
    func name<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "name", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"novalidate"` attribute, with no associated value.
    @inlinable public static 
    var novalidate:Self 
    {
        self.init(.init(escaped: "novalidate"))
    }
    /// Returns an instance of the HTML `"novalidate"` attribute, with the given string value.
    @inlinable public static 
    func novalidate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "novalidate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"open"` attribute, with no associated value.
    @inlinable public static 
    var open:Self 
    {
        self.init(.init(escaped: "open"))
    }
    /// Returns an instance of the HTML `"open"` attribute, with the given string value.
    @inlinable public static 
    func open<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "open", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"optimum"` attribute, with no associated value.
    @inlinable public static 
    var optimum:Self 
    {
        self.init(.init(escaped: "optimum"))
    }
    /// Returns an instance of the HTML `"optimum"` attribute, with the given string value.
    @inlinable public static 
    func optimum<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "optimum", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"pattern"` attribute, with no associated value.
    @inlinable public static 
    var pattern:Self 
    {
        self.init(.init(escaped: "pattern"))
    }
    /// Returns an instance of the HTML `"pattern"` attribute, with the given string value.
    @inlinable public static 
    func pattern<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pattern", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"ping"` attribute, with no associated value.
    @inlinable public static 
    var ping:Self 
    {
        self.init(.init(escaped: "ping"))
    }
    /// Returns an instance of the HTML `"ping"` attribute, with the given string value.
    @inlinable public static 
    func ping<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ping", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"placeholder"` attribute, with no associated value.
    @inlinable public static 
    var placeholder:Self 
    {
        self.init(.init(escaped: "placeholder"))
    }
    /// Returns an instance of the HTML `"placeholder"` attribute, with the given string value.
    @inlinable public static 
    func placeholder<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "placeholder", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"poster"` attribute, with no associated value.
    @inlinable public static 
    var poster:Self 
    {
        self.init(.init(escaped: "poster"))
    }
    /// Returns an instance of the HTML `"poster"` attribute, with the given string value.
    @inlinable public static 
    func poster<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "poster", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"preload"` attribute, with no associated value.
    @inlinable public static 
    var preload:Self 
    {
        self.init(.init(escaped: "preload"))
    }
    /// Returns an instance of the HTML `"preload"` attribute, with the given string value.
    @inlinable public static 
    func preload<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "preload", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"radiogroup"` attribute, with no associated value.
    @inlinable public static 
    var radiogroup:Self 
    {
        self.init(.init(escaped: "radiogroup"))
    }
    /// Returns an instance of the HTML `"radiogroup"` attribute, with the given string value.
    @inlinable public static 
    func radiogroup<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "radiogroup", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"readonly"` attribute, with no associated value.
    @inlinable public static 
    var readonly:Self 
    {
        self.init(.init(escaped: "readonly"))
    }
    /// Returns an instance of the HTML `"readonly"` attribute, with the given string value.
    @inlinable public static 
    func readonly<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "readonly", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"referrerpolicy"` attribute, with no associated value.
    @inlinable public static 
    var referrerpolicy:Self 
    {
        self.init(.init(escaped: "referrerpolicy"))
    }
    /// Returns an instance of the HTML `"referrerpolicy"` attribute, with the given string value.
    @inlinable public static 
    func referrerpolicy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "referrerpolicy", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"rel"` attribute, with no associated value.
    @inlinable public static 
    var rel:Self 
    {
        self.init(.init(escaped: "rel"))
    }
    /// Returns an instance of the HTML `"rel"` attribute, with the given string value.
    @inlinable public static 
    func rel<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rel", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"required"` attribute, with no associated value.
    @inlinable public static 
    var required:Self 
    {
        self.init(.init(escaped: "required"))
    }
    /// Returns an instance of the HTML `"required"` attribute, with the given string value.
    @inlinable public static 
    func required<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "required", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"reversed"` attribute, with no associated value.
    @inlinable public static 
    var reversed:Self 
    {
        self.init(.init(escaped: "reversed"))
    }
    /// Returns an instance of the HTML `"reversed"` attribute, with the given string value.
    @inlinable public static 
    func reversed<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "reversed", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"role"` attribute, with no associated value.
    @inlinable public static 
    var role:Self 
    {
        self.init(.init(escaped: "role"))
    }
    /// Returns an instance of the HTML `"role"` attribute, with the given string value.
    @inlinable public static 
    func role<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "role", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"rows"` attribute, with no associated value.
    @inlinable public static 
    var rows:Self 
    {
        self.init(.init(escaped: "rows"))
    }
    /// Returns an instance of the HTML `"rows"` attribute, with the given string value.
    @inlinable public static 
    func rows<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rows", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"rowspan"` attribute, with no associated value.
    @inlinable public static 
    var rowspan:Self 
    {
        self.init(.init(escaped: "rowspan"))
    }
    /// Returns an instance of the HTML `"rowspan"` attribute, with the given string value.
    @inlinable public static 
    func rowspan<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rowspan", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"sandbox"` attribute, with no associated value.
    @inlinable public static 
    var sandbox:Self 
    {
        self.init(.init(escaped: "sandbox"))
    }
    /// Returns an instance of the HTML `"sandbox"` attribute, with the given string value.
    @inlinable public static 
    func sandbox<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "sandbox", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"scope"` attribute, with no associated value.
    @inlinable public static 
    var scope:Self 
    {
        self.init(.init(escaped: "scope"))
    }
    /// Returns an instance of the HTML `"scope"` attribute, with the given string value.
    @inlinable public static 
    func scope<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "scope", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"scoped"` attribute, with no associated value.
    @inlinable public static 
    var scoped:Self 
    {
        self.init(.init(escaped: "scoped"))
    }
    /// Returns an instance of the HTML `"scoped"` attribute, with the given string value.
    @inlinable public static 
    func scoped<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "scoped", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"selected"` attribute, with no associated value.
    @inlinable public static 
    var selected:Self 
    {
        self.init(.init(escaped: "selected"))
    }
    /// Returns an instance of the HTML `"selected"` attribute, with the given string value.
    @inlinable public static 
    func selected<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "selected", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"shape"` attribute, with no associated value.
    @inlinable public static 
    var shape:Self 
    {
        self.init(.init(escaped: "shape"))
    }
    /// Returns an instance of the HTML `"shape"` attribute, with the given string value.
    @inlinable public static 
    func shape<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "shape", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"size"` attribute, with no associated value.
    @inlinable public static 
    var size:Self 
    {
        self.init(.init(escaped: "size"))
    }
    /// Returns an instance of the HTML `"size"` attribute, with the given string value.
    @inlinable public static 
    func size<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "size", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"sizes"` attribute, with no associated value.
    @inlinable public static 
    var sizes:Self 
    {
        self.init(.init(escaped: "sizes"))
    }
    /// Returns an instance of the HTML `"sizes"` attribute, with the given string value.
    @inlinable public static 
    func sizes<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "sizes", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"slot"` attribute, with no associated value.
    @inlinable public static 
    var slot:Self 
    {
        self.init(.init(escaped: "slot"))
    }
    /// Returns an instance of the HTML `"slot"` attribute, with the given string value.
    @inlinable public static 
    func slot<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "slot", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"span"` attribute, with no associated value.
    @inlinable public static 
    var span:Self 
    {
        self.init(.init(escaped: "span"))
    }
    /// Returns an instance of the HTML `"span"` attribute, with the given string value.
    @inlinable public static 
    func span<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "span", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"spellcheck"` attribute, with no associated value.
    @inlinable public static 
    var spellcheck:Self 
    {
        self.init(.init(escaped: "spellcheck"))
    }
    /// Returns an instance of the HTML `"spellcheck"` attribute, with the given string value.
    @inlinable public static 
    func spellcheck<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "spellcheck", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"src"` attribute, with no associated value.
    @inlinable public static 
    var src:Self 
    {
        self.init(.init(escaped: "src"))
    }
    /// Returns an instance of the HTML `"src"` attribute, with the given string value.
    @inlinable public static 
    func src<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "src", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"srcdoc"` attribute, with no associated value.
    @inlinable public static 
    var srcdoc:Self 
    {
        self.init(.init(escaped: "srcdoc"))
    }
    /// Returns an instance of the HTML `"srcdoc"` attribute, with the given string value.
    @inlinable public static 
    func srcdoc<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srcdoc", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"srclang"` attribute, with no associated value.
    @inlinable public static 
    var srclang:Self 
    {
        self.init(.init(escaped: "srclang"))
    }
    /// Returns an instance of the HTML `"srclang"` attribute, with the given string value.
    @inlinable public static 
    func srclang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srclang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"srcset"` attribute, with no associated value.
    @inlinable public static 
    var srcset:Self 
    {
        self.init(.init(escaped: "srcset"))
    }
    /// Returns an instance of the HTML `"srcset"` attribute, with the given string value.
    @inlinable public static 
    func srcset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srcset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"start"` attribute, with no associated value.
    @inlinable public static 
    var start:Self 
    {
        self.init(.init(escaped: "start"))
    }
    /// Returns an instance of the HTML `"start"` attribute, with the given string value.
    @inlinable public static 
    func start<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "start", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"step"` attribute, with no associated value.
    @inlinable public static 
    var step:Self 
    {
        self.init(.init(escaped: "step"))
    }
    /// Returns an instance of the HTML `"step"` attribute, with the given string value.
    @inlinable public static 
    func step<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "step", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"style"` attribute, with no associated value.
    @inlinable public static 
    var style:Self 
    {
        self.init(.init(escaped: "style"))
    }
    /// Returns an instance of the HTML `"style"` attribute, with the given string value.
    @inlinable public static 
    func style<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "style", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"summary"` attribute, with no associated value.
    @inlinable public static 
    var summary:Self 
    {
        self.init(.init(escaped: "summary"))
    }
    /// Returns an instance of the HTML `"summary"` attribute, with the given string value.
    @inlinable public static 
    func summary<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "summary", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"tabindex"` attribute, with no associated value.
    @inlinable public static 
    var tabindex:Self 
    {
        self.init(.init(escaped: "tabindex"))
    }
    /// Returns an instance of the HTML `"tabindex"` attribute, with the given string value.
    @inlinable public static 
    func tabindex<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "tabindex", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"target"` attribute, with no associated value.
    @inlinable public static 
    var target:Self 
    {
        self.init(.init(escaped: "target"))
    }
    /// Returns an instance of the HTML `"target"` attribute, with the given string value.
    @inlinable public static 
    func target<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "target", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"title"` attribute, with no associated value.
    @inlinable public static 
    var title:Self 
    {
        self.init(.init(escaped: "title"))
    }
    /// Returns an instance of the HTML `"title"` attribute, with the given string value.
    @inlinable public static 
    func title<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "title", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"translate"` attribute, with no associated value.
    @inlinable public static 
    var translate:Self 
    {
        self.init(.init(escaped: "translate"))
    }
    /// Returns an instance of the HTML `"translate"` attribute, with the given string value.
    @inlinable public static 
    func translate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "translate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"type"` attribute, with no associated value.
    @inlinable public static 
    var type:Self 
    {
        self.init(.init(escaped: "type"))
    }
    /// Returns an instance of the HTML `"type"` attribute, with the given string value.
    @inlinable public static 
    func type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "type", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"usemap"` attribute, with no associated value.
    @inlinable public static 
    var usemap:Self 
    {
        self.init(.init(escaped: "usemap"))
    }
    /// Returns an instance of the HTML `"usemap"` attribute, with the given string value.
    @inlinable public static 
    func usemap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "usemap", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"value"` attribute, with no associated value.
    @inlinable public static 
    var value:Self 
    {
        self.init(.init(escaped: "value"))
    }
    /// Returns an instance of the HTML `"value"` attribute, with the given string value.
    @inlinable public static 
    func value<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "value", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"width"` attribute, with no associated value.
    @inlinable public static 
    var width:Self 
    {
        self.init(.init(escaped: "width"))
    }
    /// Returns an instance of the HTML `"width"` attribute, with the given string value.
    @inlinable public static 
    func width<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "width", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    /// Returns an instance of the HTML `"wrap"` attribute, with no associated value.
    @inlinable public static 
    var wrap:Self 
    {
        self.init(.init(escaped: "wrap"))
    }
    /// Returns an instance of the HTML `"wrap"` attribute, with the given string value.
    @inlinable public static 
    func wrap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "wrap", escaped: string))
    }
}