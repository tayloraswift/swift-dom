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
    }
}

// typechecker requires this
extension DOM.Element where Domain == HTML
{
    @inlinable public static 
    func div(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .div([child], attributes: attributes)
    }
    @inlinable public static 
    func div(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.div, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func section(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .section([child], attributes: attributes)
    }
    @inlinable public static 
    func section(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.section, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func pre(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.pre, attributes: attributes(), content: [child])
    }
    
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
    @inlinable public static 
    func li(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .li(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func li(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .li([child], attributes: attributes)
    }
    @inlinable public static 
    func li(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.li, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func p(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .p(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func p(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .p([child], attributes: attributes)
    }
    @inlinable public static 
    func p(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.p, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func code(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .code(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func code(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .code([child], attributes: attributes)
    }
    @inlinable public static 
    func code(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.code, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func h1(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h1(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h1(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h1([child], attributes: attributes)
    }
    @inlinable public static 
    func h1(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h1, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func h2(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h2(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h2(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h2([child], attributes: attributes)
    }
    @inlinable public static 
    func h2(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h2, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func h3(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h3(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h3(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h3([child], attributes: attributes)
    }
    @inlinable public static 
    func h3(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h3, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func h4(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h4(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h4(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h4([child], attributes: attributes)
    }
    @inlinable public static 
    func h4(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h4, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func em(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .em(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func em(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .em([child], attributes: attributes)
    }
    @inlinable public static 
    func em(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.em, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func strong(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .strong(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func strong(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .strong([child], attributes: attributes)
    }
    @inlinable public static 
    func strong(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.strong, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func s(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .s(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func s(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .s([child], attributes: attributes)
    }
    @inlinable public static 
    func s(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.s, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func cite(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .cite(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func cite(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .cite([child], attributes: attributes)
    }
    @inlinable public static 
    func cite(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.cite, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func span(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .span(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func span(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .span([child], attributes: attributes)
    }
    @inlinable public static 
    func span(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.span, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func a(_ string:String, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .a(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func a(_ child:Self, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .a([child], attributes: attributes)
    }
    @inlinable public static 
    func a(_ children:[Self], @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .container(.a, attributes: attributes(), content: children)
    }
}
