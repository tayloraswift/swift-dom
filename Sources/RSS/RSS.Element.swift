import DOM 

public 
enum RSS 
{
    /// RSS has no leaves, so this enumeration is uninhabited.
    @frozen public 
    enum Leaf:CustomStringConvertible
    {
        public 
        var description:String { fatalError() }
    }
    /// An RSS element.
    @frozen public 
    struct Element<Anchor>
    {
        /// The underlying storage of this RSS element.
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
        @inlinable public 
        init(anchor:Anchor) 
        {
            self.init(node: .value(.anchor(anchor)))
        }
    }
}

extension DOM.Flattened 
{
    @inlinable public 
    init(freezing elements:RSS.Element<Key>...)
    {
        self.init(freezing: elements)
    }
    @inlinable public 
    init<Elements>(freezing elements:Elements)
        where Elements:Sequence, Elements.Element == RSS.Element<Key>
    {
        self.init()
        self.freeze(elements)
    }
    
    @inlinable public mutating 
    func freeze(_ elements:RSS.Element<Key>...)
    {
        self.freeze(elements)
    }
    @inlinable public mutating 
    func freeze<Elements>(_ elements:Elements)
        where Elements:Sequence, Elements.Element == RSS.Element<Key>
    {
        for element:RSS.Element<Key> in elements 
        {
            element.node.rendered(into: &self.literals, anchors: &self.anchors)
        }
    }
}