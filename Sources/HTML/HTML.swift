import DOM

public 
enum HTML:DocumentDomain
{    
    // these means ABI breakage is inevitable, but this is necessary for performance
    @frozen public 
    enum Container:String, ContainerDomain, Sendable
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
        
        @inlinable public static 
        var root:Self { .html }

        // @inlinable public 
        // func callAsFunction() -> DOM.Element<HTML, Anchor> 
        // {
        //     .container(self)
        // }
        // @inlinable public 
        // func callAsFunction(escaped string:String) -> DOM.Element<HTML, Anchor> 
        // {
        //     self(.text(escaped: string))
        // }
        // @inlinable public 
        // func callAsFunction<S>(_ string:S) -> DOM.Element<HTML, Anchor> 
        //     where S:StringProtocol
        // {
        //     self(.text(escaping: String.init(string)))
        // }
        // @inlinable public 
        // func callAsFunction(_ child:DOM.Element<HTML, Anchor>) -> DOM.Element<HTML, Anchor> 
        // {
        //     self(CollectionOfOne<DOM.Element<HTML, Anchor>>.init(child))
        // }
        // // the swift compiler understands that calling this with an array does not require 
        // // doing anything to the array. therefore it is not necessary to provide a 
        // // non-generic overload.
        // @inlinable public 
        // func callAsFunction<Children>(_ children:Children) -> DOM.Element<HTML, Anchor> 
        //     where Children:Sequence, Children.Element == DOM.Element<HTML, Anchor>
        // {
        //     .container(self, content: .init(children))
        // }

        // @inlinable public 
        // func callAsFunction(
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute] ) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     try self([], attributes: attributes)
        // }
        // @inlinable public 
        // func callAsFunction(escaped string:String, 
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     try self(.text(escaped: string), attributes: attributes)
        // }
        // @inlinable public 
        // func callAsFunction<S>(_ string:S, 
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        //     where S:StringProtocol
        // {
        //     try self(.text(escaping: String.init(string)), attributes: attributes)
        // }
        // @inlinable public 
        // func callAsFunction(_ child:DOM.Element<HTML, Anchor>, 
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     try self(CollectionOfOne<DOM.Element<HTML, Anchor>>.init(child), attributes: attributes)
        // }
        // // the swift compiler understands that calling this with an array does not require 
        // // doing anything to the array. therefore it is not necessary to provide a 
        // // non-generic overload.
        // @inlinable public 
        // func callAsFunction<Children>(_ children:Children, 
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        //     where Children:Sequence, Children.Element == DOM.Element<HTML, Anchor>
        // {
        //     .container(self, attributes: try attributes(), content: .init(children))
        // }

        // @inlinable public 
        // func callAsFunction<Children>(_ children:Children, 
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute], 
        //     @DOM.Element<HTML, Anchor>.Content
        //     content:() throws -> [DOM.Element<HTML, Anchor>]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     .container(self, attributes: try attributes(), content: try content())
        // }

        // @inlinable public 
        // func callAsFunction<Children>(_ children:Children, 
        //     @DOM.Element<HTML, Anchor>.Content
        //     content:() throws -> [DOM.Element<HTML, Anchor>]) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     .container(self, content: try content())
        // }
    }
    @frozen public 
    enum Leaf:String, LeafDomain, Sendable
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
        var void:Bool 
        {
            true 
        }

        // @inlinable public 
        // func callAsFunction() -> DOM.Element<HTML, Anchor> 
        // {
        //     .leaf(self)
        // }
        // @inlinable public 
        // func callAsFunction(
        //     @DOM.Element<HTML, Anchor>.Attributes 
        //     attributes:() throws -> [DOM.Element<HTML, Anchor>.Attribute] ) 
        //     rethrows -> DOM.Element<HTML, Anchor> 
        // {
        //     .leaf(self, attributes: try attributes())
        // }
    }
}

// func foo() 
// {
//     let main:HTML<Int>.Element = .main("escape")
//     {
//         ("abc", "def")
//     }
//     content: 
//     {
//         .span()
//     }
// }

// typechecker requires this
extension DOM.Element where Domain == HTML
{
    // @inlinable public var area:Domain.Leaf { .area } 
    // @inlinable public var base:Domain.Leaf { .base } 
    // @inlinable public var br:Domain.Leaf { .br } 
    // @inlinable public var col:Domain.Leaf { .col } 
    // @inlinable public var hr:Domain.Leaf { .hr } 
    // @inlinable public var img:Domain.Leaf { .img } 
    // @inlinable public var input:Domain.Leaf { .input } 
    // @inlinable public var link:Domain.Leaf { .link } 
    // @inlinable public var meta:Domain.Leaf { .meta } 
    // @inlinable public var param:Domain.Leaf { .param } 
    // @inlinable public var source:Domain.Leaf { .source } 
    // @inlinable public var track:Domain.Leaf { .track } 
    // @inlinable public var wbr:Domain.Leaf { .wbr } 

    // @inlinable public var html:Domain.Container { .html }
    // @inlinable public var head:Domain.Container { .head }
    // @inlinable public var body:Domain.Container { .body }
    // @inlinable public var a:Domain.Container { .a }
    // @inlinable public var abbr:Domain.Container { .abbr }
    // @inlinable public var audio:Domain.Container { .audio }
    // @inlinable public var b:Domain.Container { .b }
    // @inlinable public var bdi:Domain.Container { .bdi }
    // @inlinable public var bdo:Domain.Container { .bdo }
    // @inlinable public var address:Domain.Container { .address }
    // @inlinable public var article:Domain.Container { .article }
    // @inlinable public var aside:Domain.Container { .aside }
    // @inlinable public var blockquote:Domain.Container { .blockquote }
    // @inlinable public var button:Domain.Container { .button }
    // @inlinable public var canvas:Domain.Container { .canvas }
    // @inlinable public var caption:Domain.Container { .caption }
    // @inlinable public var code:Domain.Container { .code }
    // @inlinable public var colgroup:Domain.Container { .colgroup }
    // @inlinable public var cite:Domain.Container { .cite }
    // @inlinable public var data:Domain.Container { .data }
    // @inlinable public var datalist:Domain.Container { .datalist }
    // @inlinable public var del:Domain.Container { .del }
    // @inlinable public var details:Domain.Container { .details }
    // @inlinable public var dialog:Domain.Container { .dialog }
    // @inlinable public var dfn:Domain.Container { .dfn }
    // @inlinable public var div:Domain.Container { .div }
    // @inlinable public var dl:Domain.Container { .dl }
    // @inlinable public var dt:Domain.Container { .dt }
    // @inlinable public var dd:Domain.Container { .dd }
    // @inlinable public var em:Domain.Container { .em }
    // @inlinable public var embed:Domain.Container { .embed }
    // @inlinable public var fieldset:Domain.Container { .fieldset }
    // @inlinable public var figcaption:Domain.Container { .figcaption }
    // @inlinable public var figure:Domain.Container { .figure }
    // @inlinable public var footer:Domain.Container { .footer }
    // @inlinable public var form:Domain.Container { .form }
    // @inlinable public var h1:Domain.Container { .h1 }
    // @inlinable public var h2:Domain.Container { .h2 }
    // @inlinable public var h3:Domain.Container { .h3 }
    // @inlinable public var h4:Domain.Container { .h4 }
    // @inlinable public var h5:Domain.Container { .h5 }
    // @inlinable public var h6:Domain.Container { .h6 }
    // @inlinable public var header:Domain.Container { .header }
    // @inlinable public var i:Domain.Container { .i }
    // @inlinable public var iframe:Domain.Container { .iframe }
    // @inlinable public var ins:Domain.Container { .ins }
    // @inlinable public var kbd:Domain.Container { .kbd }
    // @inlinable public var label:Domain.Container { .label }
    // @inlinable public var legend:Domain.Container { .legend }
    // @inlinable public var li:Domain.Container { .li }
    // @inlinable public var main:Domain.Container { .main }
    // @inlinable public var map:Domain.Container { .map }
    // @inlinable public var mark:Domain.Container { .mark }
    // @inlinable public var menu:Domain.Container { .menu }
    // @inlinable public var meter:Domain.Container { .meter }
    // @inlinable public var nav:Domain.Container { .nav }
    // @inlinable public var noscript:Domain.Container { .noscript }
    // @inlinable public var ol:Domain.Container { .ol }
    // @inlinable public var object:Domain.Container { .object }
    // @inlinable public var optgroup:Domain.Container { .optgroup }
    // @inlinable public var option:Domain.Container { .option }
    // @inlinable public var output:Domain.Container { .output }
    // @inlinable public var p:Domain.Container { .p }
    // @inlinable public var picture:Domain.Container { .picture }
    // @inlinable public var portal:Domain.Container { .portal }
    // @inlinable public var pre:Domain.Container { .pre }
    // @inlinable public var progress:Domain.Container { .progress }
    // @inlinable public var q:Domain.Container { .q }
    // @inlinable public var rp:Domain.Container { .rp }
    // @inlinable public var rt:Domain.Container { .rt }
    // @inlinable public var ruby:Domain.Container { .ruby }
    // @inlinable public var s:Domain.Container { .s }
    // @inlinable public var samp:Domain.Container { .samp }
    // @inlinable public var small:Domain.Container { .small }
    // @inlinable public var section:Domain.Container { .section }
    // @inlinable public var span:Domain.Container { .span }
    // @inlinable public var script:Domain.Container { .script }
    // @inlinable public var select:Domain.Container { .select }
    // @inlinable public var slot:Domain.Container { .slot }
    // @inlinable public var strong:Domain.Container { .strong }
    // @inlinable public var style:Domain.Container { .style }
    // @inlinable public var sub:Domain.Container { .sub }
    // @inlinable public var summary:Domain.Container { .summary }
    // @inlinable public var sup:Domain.Container { .sup }
    // @inlinable public var table:Domain.Container { .table }
    // @inlinable public var tbody:Domain.Container { .tbody }
    // @inlinable public var td:Domain.Container { .td }
    // @inlinable public var template:Domain.Container { .template }
    // @inlinable public var textarea:Domain.Container { .textarea }
    // @inlinable public var tfoot:Domain.Container { .tfoot }
    // @inlinable public var th:Domain.Container { .th }
    // @inlinable public var thead:Domain.Container { .thead }
    // @inlinable public var time:Domain.Container { .time }
    // @inlinable public var title:Domain.Container { .title }
    // @inlinable public var tr:Domain.Container { .tr }
    // @inlinable public var u:Domain.Container { .u }
    // @inlinable public var ul:Domain.Container { .ul }
    // @inlinable public var `var`:Domain.Container { .var }
    // @inlinable public var video:Domain.Container { .video }
    // @inlinable public static 
    // func div(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .div([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func div(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.div, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func section(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .section([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func section(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.section, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func pre(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.pre, attributes: attributes(), content: [child])
    // }
    
    @inlinable public static 
    func ol(items:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.ol, attributes: attributes(), content: items)
    }
    @inlinable public static 
    func ul(items:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.ul, attributes: attributes(), content: items)
    }
    
    @inlinable public static 
    func li(@Prose _ paragraphs:() -> [[Self]]) -> Self
    {
        .container(.li, content: paragraphs().map { .container(.p, content: $0) })
    } 
    
    // @inlinable public static 
    // func p(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .p(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func p(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .p([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func p(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.p, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func code(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .code(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func code(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .code([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func code(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.code, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func h1(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h1(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func h1(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h1([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func h1(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.h1, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func h2(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h2(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func h2(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h2([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func h2(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.h2, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func h3(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h3(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func h3(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h3([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func h3(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.h3, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func h4(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h4(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func h4(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .h4([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func h4(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.h4, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func em(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .em(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func em(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .em([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func em(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.em, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func strong(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .strong(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func strong(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .strong([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func strong(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.strong, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func s(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .s(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func s(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .s([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func s(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.s, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func cite(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .cite(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func cite(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .cite([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func cite(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.cite, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func span(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .span(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func span(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .span([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func span(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    // {
    //     .container(.span, attributes: attributes(), content: children)
    // }
    
    // @inlinable public static 
    // func a(_ string:String, @Attributes attributes:() -> [Attribute]) -> Self 
    // {
    //     .a(.text(escaping: string), attributes: attributes)
    // }
    // @inlinable public static 
    // func a(_ child:Self, @Attributes attributes:() -> [Attribute]) -> Self 
    // {
    //     .a([child], attributes: attributes)
    // }
    // @inlinable public static 
    // func a(_ children:[Self], @Attributes attributes:() -> [Attribute]) -> Self 
    // {
    //     .container(.a, attributes: attributes(), content: children)
    // }
}
