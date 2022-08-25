import DOM 

public 
enum SVG 
{
    /// SVG has no leaves, so this enumeration is uninhabited.
    @frozen public 
    enum Leaf:CustomStringConvertible
    {
        public 
        var description:String { fatalError() }
    }
    @frozen public 
    struct Element<Anchor>
    {
        public 
        var node:DOM.Node<Container, Leaf, Anchor> 

        @inlinable public 
        init(node:DOM.Node<Container, Leaf, Anchor>) 
        {
            self.node = node
        }
        @inlinable public 
        init<S>(_ string:S) where S:StringProtocol 
        {
            self.init(node: .init(escaped: DOM.escape(string)))
        }
        @inlinable public 
        init<S>(escaped string:S) where S:StringProtocol 
        {
            self.init(node: .init(escaped: string))
        }
    }
}

extension DOM.Flattened 
{
    @inlinable public 
    init<Elements>(freezing elements:Elements)
        where Elements:Sequence, Elements.Element == SVG.Element<Key>
    {
        self.init()
        self.freeze(elements)
    }
    @inlinable public 
    init(freezing element:SVG.Element<Key>)
    {
        self.init()
        self.freeze(element)
    }
    
    @inlinable public mutating 
    func freeze(_ element:SVG.Element<Key>)
    {
        element.node.rendered(into: &self.literals, anchors: &self.anchors)
    }
    @inlinable public mutating 
    func freeze<Elements>(_ elements:Elements)
        where Elements:Sequence, Elements.Element == SVG.Element<Key>
    {
        for element:SVG.Element<Key> in elements 
        {
            element.node.rendered(into: &self.literals, anchors: &self.anchors)
        }
    }
}