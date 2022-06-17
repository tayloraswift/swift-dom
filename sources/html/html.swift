@_exported import DOM

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
        
        case title 
        
        case a
        case address
        case article 
        case aside 
        case blockquote 
        case code 
        case dl 
        case dt
        case dd 
        case div
        case em
        case figcaption
        case figure
        case form
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
        case header
        case li
        case main 
        case nav 
        case ol 
        case p
        case pre 
        case q
        case s
        case section
        case span
        case script 
        case strong
        case table
        case tbody
        case thead
        case td
        case th
        case tr
        case time
        case ul 
        
        @inlinable public static 
        var root:Self { .html }
    }
    @frozen public 
    enum Leaf:String, LeafDomain, Sendable
    {
        case br 
        case hr
        case img
        case input
        case link 
        case meta 
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
    func div(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .div([child], attributes: attributes)
    }
    @inlinable public static 
    func div(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.div, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func section(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .section([child], attributes: attributes)
    }
    @inlinable public static 
    func section(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.section, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func pre(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.pre, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func ol(items:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.ol, attributes: attributes(), content: items)
    }
    @inlinable public static 
    func ul(items:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.ul, attributes: attributes(), content: items)
    }
    
    @inlinable public static 
    func li(@Prose _ paragraphs:() -> [[Self]]) -> Self
    {
        .container(.li, content: paragraphs().map { .container(.p, content: $0) })
    } 
    @inlinable public static 
    func li(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .li(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func li(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .li([child], attributes: attributes)
    }
    @inlinable public static 
    func li(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.li, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func p(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .p(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func p(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .p([child], attributes: attributes)
    }
    @inlinable public static 
    func p(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.p, attributes: attributes(), content: children)
    }
    
    @inlinable public static 
    func code(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .code(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func code(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .code([child], attributes: attributes)
    }
    @inlinable public static 
    func code(_ children:[Self], @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
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
        .container(.h1, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func h2(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h2(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h2(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h2, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func h3(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h3(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h3(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h3, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func h4(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .h4(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func h4(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) -> Self 
    {
        .container(.h4, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func span(_ string:String, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .span(.text(escaping: string), attributes: attributes)
    }
    @inlinable public static 
    func span(_ child:Self, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .container(.span, attributes: attributes(), content: [child])
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
    func a(_ children:[Self], @Attributes attributes:() -> [Attribute]) 
        -> Self 
    {
        .container(.a, attributes: attributes(), content: children)
    }
}
