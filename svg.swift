protocol _SVGRoot:XML.Root where Domain == SVG
{
}
enum SVG:XML.Domain
{
    typealias Root              = _SVGRoot
    
    struct Dynamic<ID>:Root where ID:XML.ID
    {
        let attributes:[String: String]
        let content:[XML.Element<SVG, ID>]
    }
    typealias Static = Dynamic<Never>
    
    enum Container:String, XML.Container 
    {
        typealias Domain = SVG 
        
        case svg 
        case g 
        case text 
    }
    enum Leaf:String, XML.Leaf
    {
        typealias Domain = SVG 
        
        case rect 
        case line 
        case polyline 
        case polygon 
        case path
        case circle 
        case image
        
        var void:Bool 
        {
            false 
        }
    }
}
extension SVG.Root
{
    static 
    var type:SVG.Container 
    {
        .svg 
    }
}

// attributes 
protocol _SVGAttribute:XML.Attribute 
{
}
protocol _SVGScalarAttribute
{
    static 
    var name:String 
    {
        get 
    }
}
protocol _SVGVector4Attribute
{
    static 
    var name:String 
    {
        get 
    }
}
protocol _SVGRGBAAttribute
{
    static 
    var name:String 
    {
        get 
    }
}
extension SVG 
{
    typealias Attribute         = _SVGAttribute
    typealias ScalarAttribute   = _SVGScalarAttribute
    typealias Vector4Attribute  = _SVGVector4Attribute
    typealias RGBAAttribute     = _SVGRGBAAttribute
}
extension XML.AttributesBuilder where Domain == SVG 
{
    //  css classes can be written in brackets: 
    //  ```
    //  ["foo", "bar"]
    /// ```
    static 
    func buildExpression(_ classes:[String]) -> [Element]
    {
        Self.buildExpression((classes.joined(separator: " "), as: HTML.Class.self))
    }
    
    static 
    func buildExpression<Attribute>(_ expression:Attribute) -> [Element] 
        where Attribute:SVG.Attribute, Attribute.Expression == Attribute 
    {
        Self.buildExpression(Attribute.item(from: expression))
    }
    static 
    func buildExpression<Attribute>(_ expression:(Attribute.Expression, as:Attribute.Type)) -> [Element] 
        where Attribute:SVG.Attribute
    {
        Self.buildExpression(Attribute.item(from: expression.0))
    }
    
    // needed because we want to allow any `Numeric` type. will probably replace with 
    // eager typecast function
    static 
    func buildExpression<Attribute, T>(_ item:(T, as:Attribute.Type)) -> [Element]
        where Attribute:SVG.ScalarAttribute, T:Numeric
    {
        [(Attribute.name, "\(item.0)")]
    }
    static 
    func buildExpression<Attribute, T0, T1, T2, T3>(_ item:((T0, T1, T2, T3), as:Attribute.Type)) -> [Element]
        where Attribute:SVG.Vector4Attribute, T0:Numeric, T1:Numeric, T2:Numeric, T3:Numeric 
    {
        [(Attribute.name, "\(item.0.0) \(item.0.1) \(item.0.2) \(item.0.3)")]
    }
    static 
    func buildExpression<Attribute, T0, T1, T2, T3>(_ item:((r:T0, g:T1, b:T2, a:T3), as:Attribute.Type)) -> [Element]
        where Attribute:SVG.RGBAAttribute, T0:Numeric, T1:Numeric, T2:Numeric, T3:Numeric 
    {
        [(Attribute.name, "rgba(\(item.0.0), \(item.0.1), \(item.0.2), \(item.0.3))")]
    }
}
extension HTML.Class:SVG.Attribute 
{
}
extension SVG 
{
    enum R:ScalarAttribute  
    {
        static 
        let name:String = "r"
    }
    enum CX:ScalarAttribute  
    {
        static 
        let name:String = "cx"
    }
    enum RX:ScalarAttribute  
    {
        static 
        let name:String = "rx"
    }
    enum X:ScalarAttribute  
    {
        static 
        let name:String = "x"
    }
    enum X1:ScalarAttribute  
    {
        static 
        let name:String = "x1"
    }
    enum X2:ScalarAttribute  
    {
        static 
        let name:String = "x2"
    }
    enum CY:ScalarAttribute  
    {
        static 
        let name:String = "cy"
    }
    enum RY:ScalarAttribute  
    {
        static 
        let name:String = "ry"
    }
    enum Y:ScalarAttribute  
    {
        static 
        let name:String = "y"
    }
    enum Y1:ScalarAttribute  
    {
        static 
        let name:String = "y1"
    }
    enum Y2:ScalarAttribute  
    {
        static 
        let name:String = "y2"
    }
    
    enum ViewBox:Vector4Attribute 
    {
        static 
        let name:String = "viewBox"
    }
    enum Fill:RGBAAttribute 
    {
        static 
        let name:String = "fill"
    }
    
    enum D:Attribute
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
}
