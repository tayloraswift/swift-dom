@_exported import DOM
import HTML

public 
enum SVG:DocumentDomain
{
    @frozen public 
    enum Container:String, ContainerDomain, Sendable
    {
        case svg 
        case g 
        case text 
        
        @inlinable public static 
        var root:Self { .svg }
    }
    @frozen public 
    enum Leaf:String, LeafDomain, Sendable
    {
        case rect 
        case line 
        case polyline 
        case polygon 
        case path
        case circle 
        case image
        
        @inlinable public 
        var void:Bool 
        {
            false 
        }
    }
}

// attributes 
/* public 
protocol SVGAttribute:Attribute 
{
}
public 
protocol SVGScalarAttribute
{
    static 
    var name:String 
    {
        get 
    }
}
public 
protocol SVGVector4Attribute
{
    static 
    var name:String 
    {
        get 
    }
}
public 
protocol SVGRGBAAttribute
{
    static 
    var name:String 
    {
        get 
    }
}
extension DOM.Element.Attributes where Domain == SVG 
{
    //  css classes can be written in brackets: 
    //  ```
    //  ["foo", "bar"]
    /// ```
    @inlinable public static 
    func buildExpression(_ classes:[String]) -> [Element]
    {
        Self.buildExpression((classes.joined(separator: " "), as: HTML.Class.self))
    }
    
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:Attribute) -> [Element] 
        where Attribute:SVGAttribute, Attribute.Expression == Attribute 
    {
        Self.buildExpression(Attribute.item(from: expression))
    }
    @inlinable public static 
    func buildExpression<Attribute>(_ expression:(Attribute.Expression, as:Attribute.Type)) -> [Element] 
        where Attribute:SVGAttribute
    {
        Self.buildExpression(Attribute.item(from: expression.0))
    }
    
    // needed because we want to allow any `Numeric` type. will probably replace with 
    // eager typecast function
    @inlinable public static 
    func buildExpression<Attribute, T>(_ item:(T, as:Attribute.Type)) -> [Element]
        where Attribute:SVGScalarAttribute, T:Numeric
    {
        [(Attribute.name, "\(item.0)")]
    }
    @inlinable public static 
    func buildExpression<Attribute, T0, T1, T2, T3>(_ item:((T0, T1, T2, T3), as:Attribute.Type)) -> [Element]
        where Attribute:SVGVector4Attribute, T0:Numeric, T1:Numeric, T2:Numeric, T3:Numeric 
    {
        [(Attribute.name, "\(item.0.0) \(item.0.1) \(item.0.2) \(item.0.3)")]
    }
    @inlinable public static 
    func buildExpression<Attribute, T0, T1, T2, T3>(_ item:((r:T0, g:T1, b:T2, a:T3), as:Attribute.Type)) -> [Element]
        where Attribute:SVGRGBAAttribute, T0:Numeric, T1:Numeric, T2:Numeric, T3:Numeric 
    {
        [(Attribute.name, "rgba(\(item.0.0), \(item.0.1), \(item.0.2), \(item.0.3))")]
    }
}
extension HTML.Class:SVGAttribute 
{
}
extension SVG 
{
    enum R:SVGScalarAttribute  
    {
        static 
        let name:String = "r"
    }
    enum CX:SVGScalarAttribute  
    {
        static 
        let name:String = "cx"
    }
    enum RX:SVGScalarAttribute  
    {
        static 
        let name:String = "rx"
    }
    enum X:SVGScalarAttribute  
    {
        static 
        let name:String = "x"
    }
    enum X1:SVGScalarAttribute  
    {
        static 
        let name:String = "x1"
    }
    enum X2:SVGScalarAttribute  
    {
        static 
        let name:String = "x2"
    }
    enum CY:SVGScalarAttribute  
    {
        static 
        let name:String = "cy"
    }
    enum RY:SVGScalarAttribute  
    {
        static 
        let name:String = "ry"
    }
    enum Y:SVGScalarAttribute  
    {
        static 
        let name:String = "y"
    }
    enum Y1:SVGScalarAttribute  
    {
        static 
        let name:String = "y1"
    }
    enum Y2:SVGScalarAttribute  
    {
        static 
        let name:String = "y2"
    }
    
    enum ViewBox:SVGVector4Attribute 
    {
        static 
        let name:String = "viewBox"
    }
    enum Fill:SVGRGBAAttribute 
    {
        static 
        let name:String = "fill"
    }
    
    enum D:SVGAttribute
    {
        static 
        let name:String = "d"
    }
    
    static 
    func transform(_ string:String) -> (key:String, value:String)
    {
        ("transform", string)
    }
    
    static 
    func clipPath(_ string:String) -> (key:String, value:String)
    {
        ("clip-path", string)
    }
    
    static 
    func preserveAspectRatio(_ string:String) -> (key:String, value:String)
    {
        ("preserveAspectRatio", string)
    }
    
    static 
    func points(_ points:[(x:Double, y:Double)]) -> (key:String, value:String)
    {
        ("points", points.map{ "\($0.x),\($0.y)" }.joined(separator: " "))
    }
} */
