extension DOM.Element 
{
    @resultBuilder 
    @frozen public 
    struct Prose:ExpressibleByStringInterpolation
    {
        @frozen public 
        struct StringInterpolationType:StringInterpolationProtocol 
        {
            public 
            typealias Element = DOM.Element<Domain, Anchor>
            
            public 
            var elements:[Element] 
            @inlinable public 
            init(literalCapacity:Int, interpolationCount:Int)
            {
                self.elements = [] 
                self.elements.reserveCapacity(literalCapacity + interpolationCount)
            }
            
            @inlinable public mutating 
            func appendInterpolation<T>(_ value:T) where T:CustomStringConvertible
            {
                self.appendLiteral(value.description)
            }
            @inlinable public mutating 
            func appendLiteral(_ unescaped:String)
            {
                self.appendInterpolation(.text(escaping: unescaped))
            }
            @inlinable public mutating 
            func appendInterpolation(_ element:Element)
            {
                self.elements.append(element)
            }
            
            @inlinable public mutating 
            func appendInterpolation<T>(_ value:T, as container:Domain.Container) where T:CustomStringConvertible
            {
                self.appendInterpolation(value.description, as: container)
            }
            @inlinable public mutating 
            func appendInterpolation(_ unescaped:String, as container:Domain.Container)
            {
                self.appendInterpolation(.text(escaping: unescaped), as: container)
            }
            @inlinable public mutating 
            func appendInterpolation(_ element:Element, as container:Domain.Container)
            {
                self.elements.append(.container(container, content: [element]))
            }
        }
        
        public 
        let elements:[DOM.Element<Domain, Anchor>]
        
        @inlinable public 
        init(stringInterpolation:StringInterpolationType) 
        {
            self.elements = stringInterpolation.elements 
        }
        @inlinable public 
        init(stringLiteral:String) 
        {
            self.elements = [.text(escaping: stringLiteral)]
        }
    }
}
extension DOM.Element.Prose:DocumentArrayBuilder 
{
    public 
    typealias Element = Self 
    @inlinable public static 
    func buildFinalResult(_ elements:[Self]) -> [[DOM.Element<Domain, Anchor>]]
    {
        elements.map(\.elements)
    }
}
