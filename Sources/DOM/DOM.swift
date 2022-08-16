public 
enum DOM 
{
    @inlinable public static 
    func escape<S>(_ unescaped:S) -> String where S:StringProtocol
    {
        var string:String = ""
        for character:Character in unescaped 
        {
            switch character 
            {
            case "<"            : string += "&lt;"
            case ">"            : string += "&gt;"
            case "&"            : string += "&amp;"
            case "'"            : string += "&apos;"
            case "\""           : string += "&quot;"
            case let character  : string.append(character)
            }
        }
        return string
    }
}

public 
protocol TagDomain:Equatable
{
    var name:String 
    {
        get 
    }
}
extension TagDomain where Self:RawRepresentable, RawValue == String
{
    @inlinable public
    var name:String
    { 
        self.rawValue 
    }
}
public 
protocol LeafDomain:TagDomain
{
    // indicates if the leaf should be rendered '<example>' (true) or '<example/>' (false)
    var void:Bool 
    {
        get 
    }
}
public 
protocol ContainerDomain:TagDomain
{
    static 
    var root:Self
    {
        get 
    }
}
public 
protocol DocumentDomain 
{
    associatedtype Container    where Container:ContainerDomain
    associatedtype Leaf         where Leaf:LeafDomain
}
extension DocumentDomain 
{
    public 
    typealias Element<Anchor> = DOM.Element<Self, Anchor> 
    public 
    typealias StaticElement = DOM.Element<Self, Never>
    
    public 
    typealias Root<Anchor> = DOM.Root<Self, Anchor> 
    public 
    typealias StaticRoot = DOM.Root<Self, Never> 
}

public 
protocol DocumentArrayBuilder 
{
    associatedtype Element 
}
extension DocumentArrayBuilder
{
    @inlinable public static 
    func buildExpression(_ element:Element?) -> [Element]
    {
        element.map{ [$0] } ?? []
    }
    @inlinable public static 
    func buildExpression(_ element:Element) -> [Element]
    {
        [element]
    }
    @inlinable public static 
    func buildExpression(_ elements:[Element]) -> [Element]
    {
        elements
    }
    @inlinable public static 
    func buildExpression<S>(_ elements:S) -> [Element]
        where S:Sequence, S.Element == Element 
    {
        [Element].init(elements)
    }
    @inlinable public static 
    func buildBlock(_ elements:[Element]...) -> [Element]
    {
        elements.flatMap{ $0 }
    }
    @inlinable public static 
    func buildArray(_ elements:[[Element]]) -> [Element]
    {
        elements.flatMap{ $0 }
    }
    @inlinable public static 
    func buildOptional(_ element:[Element]?) -> [Element]
    {
        element ?? []
    }
    @inlinable public static 
    func buildEither(first:[Element]) -> [Element]
    {
        first
    }
    @inlinable public static 
    func buildEither(second:[Element]) -> [Element]
    {
        second
    }
}
