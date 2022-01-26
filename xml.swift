protocol _XMLLeaf:Equatable, RawRepresentable where RawValue == String 
{
    // needed for typechecker performance
    associatedtype Domain where Domain:XML.Domain, Domain.Leaf == Self
    var void:Bool 
    {
        get 
    }
}
protocol _XMLContainer:Equatable, RawRepresentable where RawValue == String 
{
    associatedtype Domain where Domain:XML.Domain, Domain.Container == Self
}
protocol _XMLDomain 
{
    associatedtype Container    where Container:XML.Container, Container.Domain == Self 
    associatedtype Leaf         where      Leaf:XML.Leaf,           Leaf.Domain == Self 
}
protocol _XMLID
{
    var xmlId:String 
    {
        get 
    }
}
extension Never:XML.ID 
{
    var xmlId:String  
    {
        unreachable
    }
}
protocol _XMLRoot
{
    associatedtype Domain where Domain:XML.Domain 
    associatedtype ID where ID:XML.ID
    
    typealias Element = XML.Element<Domain, ID> 
    
    static 
    var type:Domain.Container 
    {
        get 
    }
    var attributes:[String: String] 
    {
        get 
    }
    var content:[Element] 
    {
        get 
    }
    
    var rendered:String 
    {
        get
    }
    
    init(attributes:[String: String], content:[Element])
}
extension XML.Root 
{
    var element:Element 
    {
        .container(Self.type, id: nil, attributes: self.attributes, content: self.content)
    }
    
    init(   
        @XML.AttributesBuilder<Domain> attributes:() -> [String: String] = { [:] }, 
        @XML.ElementsBuilder<Domain, ID>  content:() -> [Element]        = { [ ] }) 
    {
        self.init(attributes: attributes(), content: content())
    }
    init(
        @XML.ElementsBuilder<Domain, ID>  content:() -> [Element]        = { [ ] }) 
    {
        self.init(attributes: [:], content: content())
    }
}

extension XML.Leaf  
{
    func callAsFunction<ID>(id:ID? = nil, 
        @XML.AttributesBuilder<Domain> attributes:() -> [String: String]) 
        -> XML.Element<Domain, ID> 
        where ID:XML.ID
    {
        .leaf(self, id: id, attributes: attributes())
    }
    func callAsFunction<ID>(id:ID) 
        -> XML.Element<Domain, ID> 
        where ID:XML.ID
    {
        .leaf(self, id: id)
    }
}
extension XML.Container 
{
    func callAsFunction<ID>(id:ID? = nil, 
        @XML.AttributesBuilder<Domain> attributes:() -> [String: String], 
        @XML.ElementsBuilder<Domain, ID>  content:() -> [XML.Element<Domain, ID>] = { [] }) 
        -> XML.Element<Domain, ID> 
        where ID:XML.ID
    {
        .container(self, id: id, attributes: attributes(), content: content())
    }
    func callAsFunction<ID>(id:ID? = nil, 
        @XML.ElementsBuilder<Domain, ID> _ content:() -> [XML.Element<Domain, ID>]) 
        -> XML.Element<Domain, ID> 
        where ID:XML.ID
    {
        .container(self, id: id, content: content())
    }
    func callAsFunction<ID>(id:ID)
        -> XML.Element<Domain, ID> 
        where ID:XML.ID
    {
        .container(self, id: id)
    }
}

enum XML 
{
    typealias ArrayBuilder = _XMLArrayBuilder
    
    typealias ID        = _XMLID
    typealias Root      = _XMLRoot
    typealias Leaf      = _XMLLeaf
    typealias Container = _XMLContainer
    typealias Domain    = _XMLDomain
    
    // by default, only (key:String, value:String) expressions are accepted. 
    // some `Domain`s provide additional DSL
    @resultBuilder 
    enum AttributesBuilder<Domain>:ArrayBuilder where Domain:XML.Domain
    {
        typealias Element = (key:String, value:String)
        
        static 
        func buildFinalResult(_ attributes:[(key:String, value:String)]) -> [String: String]
        {
            var dictionary:[String: String] = [:]
            for (key, value):(String, String) in attributes 
                where dictionary.updateValue(value, forKey: key) != nil
            {
                print("warning: duplicate attribute '\(key)': '\(value)'")
            }
            return dictionary
        }
    }
    @resultBuilder 
    enum ElementsBuilder<Domain, ID>:ArrayBuilder where Domain:XML.Domain, ID:XML.ID
    {
        typealias Element = XML.Element<Domain, ID>
        
        static 
        func buildExpression(_ inline:Inline<Domain, ID>) -> [Element]  
        {
            inline.elements
        }
        static 
        func buildExpression<Other>(_ foreign:Other) -> [Element]
            where Other:XML.Root
        {
            [Element.root(foreign)]
        }
        static 
        func buildExpression(_ empty:Domain.Container) -> [Element]  
        {
            [Element.container(empty)]
        }
        static 
        func buildExpression(_ empty:Domain.Leaf) -> [Element]  
        {
            [Element.leaf(empty)]
        }
        static 
        func buildExpression(_ unescaped:String) -> [Element]  
        {
            [Element.text(escaping: unescaped)]
        }
    }
    @resultBuilder 
    enum InlineBuilder<Domain, ID>:ArrayBuilder where Domain:XML.Domain, ID:XML.ID
    {
        typealias Element = XML.Inline<Domain, ID>
        
        static 
        func buildFinalResult(_ elements:[Element]) -> [[XML.Element<Domain, ID>]]
        {
            elements.map(\.elements)
        }
    }
    
    struct Inline<Domain, ID>:ExpressibleByStringInterpolation where Domain:XML.Domain, ID:XML.ID
    {
        typealias Element = XML.Element<Domain, ID>
        
        struct StringInterpolationType:StringInterpolationProtocol 
        {
            var elements:[Element] 
            
            init(literalCapacity:Int, interpolationCount:Int)
            {
                self.elements = [] 
                self.elements.reserveCapacity(literalCapacity + interpolationCount)
            }
            mutating 
            func appendLiteral(_ unescaped:String)
            {
                self.appendInterpolation(.text(escaping: unescaped))
            }
            mutating 
            func appendInterpolation<T>(_ value:T) where T:CustomStringConvertible
            {
                self.appendInterpolation(.text(escaping: value.description))
            }
            mutating 
            func appendInterpolation(_ element:Element)
            {
                self.elements.append(element)
            }
            
            mutating 
            func appendInterpolation(_ value:String, as container:Domain.Container)
            {
                self.appendInterpolation(.text(escaping: value), as: container)
            }
            mutating 
            func appendInterpolation(_ element:Element, as container:Domain.Container)
            {
                self.elements.append(.container(container, content: [element]))
            }
        }
        
        let elements:[Element]
        
        init(stringInterpolation:StringInterpolationType) 
        {
            self.elements = stringInterpolation.elements 
        }
        init(stringLiteral:String) 
        {
            self.elements = [.text(escaping: stringLiteral)]
        }
    }
    enum Element<Domain, ID> where Domain:XML.Domain, ID:XML.ID
    {
        case root       (Root)
        
        case container  (Domain.Container, id:ID? = nil, attributes:[String: String] = [:], content:[Self] = []) 
        case leaf       (Domain.Leaf,      id:ID? = nil, attributes:[String: String] = [:]) 
        case text       (escaped:String)
        
        static 
        func text(escaping unescaped:String) -> Self
        {
            .text(escaped: XML.escape(unescaped))
        }
    }
    
    private static 
    func escape(_ unescaped:String) -> String 
    {
        var string:String = ""
        for character:Character in unescaped 
        {
            switch character 
            {
            case "<"            : string.append("&lt;")
            case ">"            : string.append("&gt;")
            case "&"            : string.append("&amp;")
            case "'"            : string.append("&apos;")
            case "\""           : string.append("&quot;")
            case let character  : string.append(character)
            }
        }
        return string
    }
}

// attributes 
extension XML 
{
    typealias Attribute = _XMLAttribute
}
protocol _XMLAttribute
{
    associatedtype Expression = String
    static 
    func value(from expression:Expression) -> String
    static 
    var name:String 
    {
        get 
    }
}
extension XML.Attribute 
{
    static 
    func item(from expression:Expression) -> (key:String, value:String) 
    {
        (Self.name, Self.value(from: expression))
    }
}
extension XML.Attribute where Expression == String
{
    static 
    func value(from expression:Expression) -> String
    {
        expression
    }
}
extension XML.Attribute where Expression == Self, Self:RawRepresentable, Self.RawValue == String 
{
    static 
    func value(from expression:Expression) -> String
    {
        expression.rawValue
    }
}

// rendering 
extension XML.Root 
{
    var rendered:String 
    {
        self.element.rendered 
    }
    var plain:String 
    {
        self.element.plain
    }
}
extension XML.Domain
{
    static 
    func render<S, ID>(_ content:S) -> String
        where   S:Sequence, ID:XML.ID, S.Element == XML.Element<Self, ID>
    {
        var concatenated:String = ""
        for element:XML.Element<Self, ID> in content 
        {
            concatenated += element.rendered 
        }
        return concatenated
    }
}
extension XML.Element
{
    var rendered:String 
    {
        let attributes:[String: String], 
            children:[Self]??, 
            type:String, 
            id:ID?
        switch self 
        {
        case .root      (let foreign): 
            return foreign.rendered
        case .text      (escaped: let text):
            return text 
        
        case .leaf      (let element, id: let identifier, attributes: let dictionary): 
            attributes  = dictionary
            children    = element.void ? .none : .some(nil) 
            type        = element.rawValue
            id          = identifier 
        case .container (let element, id: let identifier, attributes: let dictionary, content: let content):
            attributes  = dictionary
            children    = .some(content)
            type        = element.rawValue
            id          = identifier
        }
        
        var head:String         = type 
        if let id:ID            = id
        {
            head               += " id=\"\(id.xmlId)\"" 
        }
        for (key, value):(String, String) in attributes.sorted(by: { $0.key < $1.key })
        { 
            head               += " \(key)=\"\(value)\"" 
        }
        guard let enclosed:[Self]?  = children 
        else 
        {
            return "<\(head)>"
        }
        guard let content:[Self]    = enclosed
        else 
        {
            return "<\(head)/>"
        }
        return "<\(head)>\(content.map{ $0.rendered }.joined())</\(type)>"
    }
    var plain:String 
    {
        switch self 
        {
        case .root      (let foreign): 
            return foreign.plain
        case .text      (escaped: let text):
            return text 
        case .leaf      (_, id: _, attributes: _): 
            return ""
        case .container (_, id: _, attributes: _, content: let content):
            return content.map(\.plain).joined()
        }
    }
    func stripping(where predicate:(Domain.Container) throws -> Bool) rethrows -> [Self] 
    {
        guard case .container(let type, id: let id, attributes: let attributes, content: let content) = self
        else 
        {
            return [self] 
        }
        let stripped:[Self] = try content.flatMap 
        {
            try $0.stripping(where: predicate)
        } 
        if try predicate(type)
        {
            return stripped 
        }
        else 
        {
            return [.container(type, id: id, attributes: attributes, content: stripped)]
        }
    }
    func stripping(_ container:Domain.Container) -> [Self] 
    {
        self.stripping 
        {
            if case container = $0
            {
                return true 
            }
            else 
            {
                return false 
            }
        }
    }
}

protocol _XMLArrayBuilder 
{
    associatedtype Element 
}
extension XML.ArrayBuilder 
{
    static 
    func buildExpression(_ element:Element) -> [Element]
    {
        [element]
    }
    static 
    func buildExpression(_ elements:[Element]) -> [Element]
    {
        elements
    }
    static 
    func buildExpression<S>(_ elements:S) -> [Element]
        where S:Sequence, S.Element == Element 
    {
        [Element].init(elements)
    }
    static 
    func buildBlock(_ elements:[Element]...) -> [Element]
    {
        elements.flatMap{ $0 }
    }
    static 
    func buildArray(_ elements:[[Element]]) -> [Element]
    {
        elements.flatMap{ $0 }
    }
    static 
    func buildOptional(_ element:[Element]?) -> [Element]
    {
        element ?? []
    }
    static 
    func buildEither(first:[Element]) -> [Element]
    {
        first
    }
    static 
    func buildEither(second:[Element]) -> [Element]
    {
        second
    }
}
