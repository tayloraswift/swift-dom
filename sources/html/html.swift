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
    
    /* @inlinable public static 
    func li(@Prose _ paragraphs:() -> [[Self]]) -> Self
    {
        Self[.li]
        {
            paragraphs().map 
            {
                Self.container(.p, content: $0)
            }
        }
    } */
    
    @inlinable public static 
    func code(_ string:String, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.code, attributes: attributes(), content: [.text(escaping: string)])
    }
    @inlinable public static 
    func code(_ child:Self, @Attributes attributes:() -> [Attribute] = { [] }) 
        -> Self 
    {
        .container(.code, attributes: attributes(), content: [child])
    }
    
    @inlinable public static 
    func span(_ string:String, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .container(.span, attributes: attributes(), content: [.text(escaping: string)])
    }
    @inlinable public static 
    func span(_ child:Self, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        .container(.span, attributes: attributes(), content: [child])
    }
    // all inline blocks will get consolidated into one single block
    /* @inlinable public static 
    func span(
        @Attributes attributes:() -> Attributes = { [:] }, 
        @Prose  content inline:() -> [[Self]]) 
        -> Self 
    {
        .container(.span, attributes: attributes(), content: .init(inline().joined()))
    } */
    
    @inlinable public static 
    func a(_ string:String, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        return .container(.a, attributes: attributes(), content: [.text(escaping: string)])
    }
    @inlinable public static 
    func a(_ child:Self, @Attributes attributes:() -> [Attribute]) -> Self 
    {
        return .container(.a, attributes: attributes(), content: [child])
    }
    /* // all inline blocks will get consolidated into one single block
    @inlinable public static 
    func a(href url:String,
        @Attributes attributes:() -> Attributes = { [:] }, 
        @Prose  content inline:() -> [[Self]]) 
        -> Self 
    {
        var attributes:Attributes     = attributes()
            attributes[Domain.Href.name]    = url
        if !`internal` 
        {
            attributes[Domain.Target.name]  = Domain.Target._blank.rawValue
        }
        return .container(.a, attributes: attributes, content: .init(inline().joined()))
    }
    
    // all inline blocks will get consolidated into one single block
    @inlinable public static 
    func paragraph(
        @Attributes attributes:() -> Attributes = { [:] }, 
        @Prose content inline:() -> Prose) 
        -> Self
    {
        return .container(.p, attributes: attributes(), content: inline().elements)
    } */
}
