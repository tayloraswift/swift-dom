import DOM 

extension HTML.Element 
{
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
    @inlinable public static 
    var accept:Self 
    {
        self.init(.init(escaped: "accept"))
    }
    @inlinable public static 
    func accept<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accept", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var acceptCharset:Self 
    {
        self.init(.init(escaped: "accept-charset"))
    }
    @inlinable public static 
    func acceptCharset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accept-charset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var accesskey:Self 
    {
        self.init(.init(escaped: "accesskey"))
    }
    @inlinable public static 
    func accesskey<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "accesskey", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var action:Self 
    {
        self.init(.init(escaped: "action"))
    }
    @inlinable public static 
    func action<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "action", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var align:Self 
    {
        self.init(.init(escaped: "align"))
    }
    @inlinable public static 
    func align<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "align", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var allow:Self 
    {
        self.init(.init(escaped: "allow"))
    }
    @inlinable public static 
    func allow<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "allow", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var alt:Self 
    {
        self.init(.init(escaped: "alt"))
    }
    @inlinable public static 
    func alt<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "alt", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var async:Self 
    {
        self.init(.init(escaped: "async"))
    }
    @inlinable public static 
    func async<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "async", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var autocapitalize:Self 
    {
        self.init(.init(escaped: "autocapitalize"))
    }
    @inlinable public static 
    func autocapitalize<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autocapitalize", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var autocomplete:Self 
    {
        self.init(.init(escaped: "autocomplete"))
    }
    @inlinable public static 
    func autocomplete<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autocomplete", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var autofocus:Self 
    {
        self.init(.init(escaped: "autofocus"))
    }
    @inlinable public static 
    func autofocus<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autofocus", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var autoplay:Self 
    {
        self.init(.init(escaped: "autoplay"))
    }
    @inlinable public static 
    func autoplay<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "autoplay", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var background:Self 
    {
        self.init(.init(escaped: "background"))
    }
    @inlinable public static 
    func background<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "background", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var bgcolor:Self 
    {
        self.init(.init(escaped: "bgcolor"))
    }
    @inlinable public static 
    func bgcolor<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "bgcolor", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var border:Self 
    {
        self.init(.init(escaped: "border"))
    }
    @inlinable public static 
    func border<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "border", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var buffered:Self 
    {
        self.init(.init(escaped: "buffered"))
    }
    @inlinable public static 
    func buffered<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "buffered", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var capture:Self 
    {
        self.init(.init(escaped: "capture"))
    }
    @inlinable public static 
    func capture<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "capture", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var challenge:Self 
    {
        self.init(.init(escaped: "challenge"))
    }
    @inlinable public static 
    func challenge<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "challenge", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var charset:Self 
    {
        self.init(.init(escaped: "charset"))
    }
    @inlinable public static 
    func charset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "charset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var checked:Self 
    {
        self.init(.init(escaped: "checked"))
    }
    @inlinable public static 
    func checked<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "checked", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var cite:Self 
    {
        self.init(.init(escaped: "cite"))
    }
    @inlinable public static 
    func cite<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cite", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var `class`:Self 
    {
        self.init(.init(escaped: "class"))
    }
    @inlinable public static 
    func `class`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "class", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var code:Self 
    {
        self.init(.init(escaped: "code"))
    }
    @inlinable public static 
    func code<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "code", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var codebase:Self 
    {
        self.init(.init(escaped: "codebase"))
    }
    @inlinable public static 
    func codebase<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "codebase", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var color:Self 
    {
        self.init(.init(escaped: "color"))
    }
    @inlinable public static 
    func color<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "color", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var cols:Self 
    {
        self.init(.init(escaped: "cols"))
    }
    @inlinable public static 
    func cols<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "cols", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var colspan:Self 
    {
        self.init(.init(escaped: "colspan"))
    }
    @inlinable public static 
    func colspan<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "colspan", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var content:Self 
    {
        self.init(.init(escaped: "content"))
    }
    @inlinable public static 
    func content<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "content", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var contenteditable:Self 
    {
        self.init(.init(escaped: "contenteditable"))
    }
    @inlinable public static 
    func contenteditable<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contenteditable", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var contextmenu:Self 
    {
        self.init(.init(escaped: "contextmenu"))
    }
    @inlinable public static 
    func contextmenu<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "contextmenu", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var controls:Self 
    {
        self.init(.init(escaped: "controls"))
    }
    @inlinable public static 
    func controls<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "controls", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var coords:Self 
    {
        self.init(.init(escaped: "coords"))
    }
    @inlinable public static 
    func coords<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "coords", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var crossorigin:Self 
    {
        self.init(.init(escaped: "crossorigin"))
    }
    @inlinable public static 
    func crossorigin<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "crossorigin", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var csp:Self 
    {
        self.init(.init(escaped: "csp"))
    }
    @inlinable public static 
    func csp<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "csp", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var data:Self 
    {
        self.init(.init(escaped: "data"))
    }
    @inlinable public static 
    func data<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "data", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var datetime:Self 
    {
        self.init(.init(escaped: "datetime"))
    }
    @inlinable public static 
    func datetime<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "datetime", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var `default`:Self 
    {
        self.init(.init(escaped: "default"))
    }
    @inlinable public static 
    func `default`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "default", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var `defer`:Self 
    {
        self.init(.init(escaped: "defer"))
    }
    @inlinable public static 
    func `defer`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "defer", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var dir:Self 
    {
        self.init(.init(escaped: "dir"))
    }
    @inlinable public static 
    func dir<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dir", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var dirname:Self 
    {
        self.init(.init(escaped: "dirname"))
    }
    @inlinable public static 
    func dirname<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "dirname", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var disabled:Self 
    {
        self.init(.init(escaped: "disabled"))
    }
    @inlinable public static 
    func disabled<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "disabled", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var download:Self 
    {
        self.init(.init(escaped: "download"))
    }
    @inlinable public static 
    func download<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "download", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var draggable:Self 
    {
        self.init(.init(escaped: "draggable"))
    }
    @inlinable public static 
    func draggable<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "draggable", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var enctype:Self 
    {
        self.init(.init(escaped: "enctype"))
    }
    @inlinable public static 
    func enctype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "enctype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var enterkeykint:Self 
    {
        self.init(.init(escaped: "enterkeykint"))
    }
    @inlinable public static 
    func enterkeykint<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "enterkeykint", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var `for`:Self 
    {
        self.init(.init(escaped: "for"))
    }
    @inlinable public static 
    func `for`<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "for", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var form:Self 
    {
        self.init(.init(escaped: "form"))
    }
    @inlinable public static 
    func form<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "form", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var formaction:Self 
    {
        self.init(.init(escaped: "formaction"))
    }
    @inlinable public static 
    func formaction<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formaction", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var formenctype:Self 
    {
        self.init(.init(escaped: "formenctype"))
    }
    @inlinable public static 
    func formenctype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formenctype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var formmethod:Self 
    {
        self.init(.init(escaped: "formmethod"))
    }
    @inlinable public static 
    func formmethod<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formmethod", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var formnovalidate:Self 
    {
        self.init(.init(escaped: "formnovalidate"))
    }
    @inlinable public static 
    func formnovalidate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formnovalidate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var formtarget:Self 
    {
        self.init(.init(escaped: "formtarget"))
    }
    @inlinable public static 
    func formtarget<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "formtarget", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var headers:Self 
    {
        self.init(.init(escaped: "headers"))
    }
    @inlinable public static 
    func headers<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "headers", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var height:Self 
    {
        self.init(.init(escaped: "height"))
    }
    @inlinable public static 
    func height<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "height", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var hidden:Self 
    {
        self.init(.init(escaped: "hidden"))
    }
    @inlinable public static 
    func hidden<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hidden", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var high:Self 
    {
        self.init(.init(escaped: "high"))
    }
    @inlinable public static 
    func high<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "high", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var href:Self 
    {
        self.init(.init(escaped: "href"))
    }
    @inlinable public static 
    func href<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "href", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var hreflang:Self 
    {
        self.init(.init(escaped: "hreflang"))
    }
    @inlinable public static 
    func hreflang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "hreflang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var httpEquiv:Self 
    {
        self.init(.init(escaped: "http-equiv"))
    }
    @inlinable public static 
    func httpEquiv<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "http-equiv", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var icon:Self 
    {
        self.init(.init(escaped: "icon"))
    }
    @inlinable public static 
    func icon<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "icon", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var id:Self 
    {
        self.init(.init(escaped: "id"))
    }
    @inlinable public static 
    func id<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "id", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var importance:Self 
    {
        self.init(.init(escaped: "importance"))
    }
    @inlinable public static 
    func importance<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "importance", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var integrity:Self 
    {
        self.init(.init(escaped: "integrity"))
    }
    @inlinable public static 
    func integrity<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "integrity", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var intrinsicsize:Self 
    {
        self.init(.init(escaped: "intrinsicsize"))
    }
    @inlinable public static 
    func intrinsicsize<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "intrinsicsize", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var inputmode:Self 
    {
        self.init(.init(escaped: "inputmode"))
    }
    @inlinable public static 
    func inputmode<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "inputmode", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var ismap:Self 
    {
        self.init(.init(escaped: "ismap"))
    }
    @inlinable public static 
    func ismap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ismap", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var itemprop:Self 
    {
        self.init(.init(escaped: "itemprop"))
    }
    @inlinable public static 
    func itemprop<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "itemprop", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var keytype:Self 
    {
        self.init(.init(escaped: "keytype"))
    }
    @inlinable public static 
    func keytype<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "keytype", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var kind:Self 
    {
        self.init(.init(escaped: "kind"))
    }
    @inlinable public static 
    func kind<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "kind", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var label:Self 
    {
        self.init(.init(escaped: "label"))
    }
    @inlinable public static 
    func label<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "label", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var lang:Self 
    {
        self.init(.init(escaped: "lang"))
    }
    @inlinable public static 
    func lang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "lang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var language:Self 
    {
        self.init(.init(escaped: "language"))
    }
    @inlinable public static 
    func language<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "language", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var loading:Self 
    {
        self.init(.init(escaped: "loading"))
    }
    @inlinable public static 
    func loading<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "loading", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var list:Self 
    {
        self.init(.init(escaped: "list"))
    }
    @inlinable public static 
    func list<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "list", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var loop:Self 
    {
        self.init(.init(escaped: "loop"))
    }
    @inlinable public static 
    func loop<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "loop", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var low:Self 
    {
        self.init(.init(escaped: "low"))
    }
    @inlinable public static 
    func low<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "low", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var manifest:Self 
    {
        self.init(.init(escaped: "manifest"))
    }
    @inlinable public static 
    func manifest<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "manifest", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var max:Self 
    {
        self.init(.init(escaped: "max"))
    }
    @inlinable public static 
    func max<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "max", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var maxlength:Self 
    {
        self.init(.init(escaped: "maxlength"))
    }
    @inlinable public static 
    func maxlength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "maxlength", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var minlength:Self 
    {
        self.init(.init(escaped: "minlength"))
    }
    @inlinable public static 
    func minlength<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "minlength", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var media:Self 
    {
        self.init(.init(escaped: "media"))
    }
    @inlinable public static 
    func media<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "media", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var method:Self 
    {
        self.init(.init(escaped: "method"))
    }
    @inlinable public static 
    func method<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "method", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var min:Self 
    {
        self.init(.init(escaped: "min"))
    }
    @inlinable public static 
    func min<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "min", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var multiple:Self 
    {
        self.init(.init(escaped: "multiple"))
    }
    @inlinable public static 
    func multiple<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "multiple", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var muted:Self 
    {
        self.init(.init(escaped: "muted"))
    }
    @inlinable public static 
    func muted<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "muted", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var name:Self 
    {
        self.init(.init(escaped: "name"))
    }
    @inlinable public static 
    func name<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "name", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var novalidate:Self 
    {
        self.init(.init(escaped: "novalidate"))
    }
    @inlinable public static 
    func novalidate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "novalidate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var open:Self 
    {
        self.init(.init(escaped: "open"))
    }
    @inlinable public static 
    func open<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "open", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var optimum:Self 
    {
        self.init(.init(escaped: "optimum"))
    }
    @inlinable public static 
    func optimum<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "optimum", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var pattern:Self 
    {
        self.init(.init(escaped: "pattern"))
    }
    @inlinable public static 
    func pattern<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "pattern", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var ping:Self 
    {
        self.init(.init(escaped: "ping"))
    }
    @inlinable public static 
    func ping<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "ping", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var placeholder:Self 
    {
        self.init(.init(escaped: "placeholder"))
    }
    @inlinable public static 
    func placeholder<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "placeholder", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var poster:Self 
    {
        self.init(.init(escaped: "poster"))
    }
    @inlinable public static 
    func poster<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "poster", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var preload:Self 
    {
        self.init(.init(escaped: "preload"))
    }
    @inlinable public static 
    func preload<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "preload", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var radiogroup:Self 
    {
        self.init(.init(escaped: "radiogroup"))
    }
    @inlinable public static 
    func radiogroup<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "radiogroup", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var readonly:Self 
    {
        self.init(.init(escaped: "readonly"))
    }
    @inlinable public static 
    func readonly<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "readonly", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var referrerpolicy:Self 
    {
        self.init(.init(escaped: "referrerpolicy"))
    }
    @inlinable public static 
    func referrerpolicy<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "referrerpolicy", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var rel:Self 
    {
        self.init(.init(escaped: "rel"))
    }
    @inlinable public static 
    func rel<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rel", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var required:Self 
    {
        self.init(.init(escaped: "required"))
    }
    @inlinable public static 
    func required<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "required", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var reversed:Self 
    {
        self.init(.init(escaped: "reversed"))
    }
    @inlinable public static 
    func reversed<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "reversed", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var role:Self 
    {
        self.init(.init(escaped: "role"))
    }
    @inlinable public static 
    func role<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "role", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var rows:Self 
    {
        self.init(.init(escaped: "rows"))
    }
    @inlinable public static 
    func rows<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rows", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var rowspan:Self 
    {
        self.init(.init(escaped: "rowspan"))
    }
    @inlinable public static 
    func rowspan<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "rowspan", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var sandbox:Self 
    {
        self.init(.init(escaped: "sandbox"))
    }
    @inlinable public static 
    func sandbox<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "sandbox", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var scope:Self 
    {
        self.init(.init(escaped: "scope"))
    }
    @inlinable public static 
    func scope<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "scope", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var scoped:Self 
    {
        self.init(.init(escaped: "scoped"))
    }
    @inlinable public static 
    func scoped<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "scoped", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var selected:Self 
    {
        self.init(.init(escaped: "selected"))
    }
    @inlinable public static 
    func selected<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "selected", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var shape:Self 
    {
        self.init(.init(escaped: "shape"))
    }
    @inlinable public static 
    func shape<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "shape", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var size:Self 
    {
        self.init(.init(escaped: "size"))
    }
    @inlinable public static 
    func size<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "size", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var sizes:Self 
    {
        self.init(.init(escaped: "sizes"))
    }
    @inlinable public static 
    func sizes<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "sizes", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var slot:Self 
    {
        self.init(.init(escaped: "slot"))
    }
    @inlinable public static 
    func slot<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "slot", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var span:Self 
    {
        self.init(.init(escaped: "span"))
    }
    @inlinable public static 
    func span<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "span", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var spellcheck:Self 
    {
        self.init(.init(escaped: "spellcheck"))
    }
    @inlinable public static 
    func spellcheck<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "spellcheck", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var src:Self 
    {
        self.init(.init(escaped: "src"))
    }
    @inlinable public static 
    func src<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "src", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var srcdoc:Self 
    {
        self.init(.init(escaped: "srcdoc"))
    }
    @inlinable public static 
    func srcdoc<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srcdoc", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var srclang:Self 
    {
        self.init(.init(escaped: "srclang"))
    }
    @inlinable public static 
    func srclang<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srclang", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var srcset:Self 
    {
        self.init(.init(escaped: "srcset"))
    }
    @inlinable public static 
    func srcset<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "srcset", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var start:Self 
    {
        self.init(.init(escaped: "start"))
    }
    @inlinable public static 
    func start<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "start", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var step:Self 
    {
        self.init(.init(escaped: "step"))
    }
    @inlinable public static 
    func step<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "step", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var style:Self 
    {
        self.init(.init(escaped: "style"))
    }
    @inlinable public static 
    func style<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "style", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var summary:Self 
    {
        self.init(.init(escaped: "summary"))
    }
    @inlinable public static 
    func summary<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "summary", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var tabindex:Self 
    {
        self.init(.init(escaped: "tabindex"))
    }
    @inlinable public static 
    func tabindex<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "tabindex", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var target:Self 
    {
        self.init(.init(escaped: "target"))
    }
    @inlinable public static 
    func target<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "target", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var title:Self 
    {
        self.init(.init(escaped: "title"))
    }
    @inlinable public static 
    func title<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "title", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var translate:Self 
    {
        self.init(.init(escaped: "translate"))
    }
    @inlinable public static 
    func translate<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "translate", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var type:Self 
    {
        self.init(.init(escaped: "type"))
    }
    @inlinable public static 
    func type<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "type", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var usemap:Self 
    {
        self.init(.init(escaped: "usemap"))
    }
    @inlinable public static 
    func usemap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "usemap", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var value:Self 
    {
        self.init(.init(escaped: "value"))
    }
    @inlinable public static 
    func value<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "value", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var width:Self 
    {
        self.init(.init(escaped: "width"))
    }
    @inlinable public static 
    func width<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "width", escaped: string))
    }
}
extension HTML.Element.Attribute 
{
    @inlinable public static 
    var wrap:Self 
    {
        self.init(.init(escaped: "wrap"))
    }
    @inlinable public static 
    func wrap<S>(_ string:S) -> Self where S:StringProtocol 
    {
        self.init(.init(key: "wrap", escaped: string))
    }
}