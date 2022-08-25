import DOM 

public 
enum HTML 
{
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
    init<Elements>(freezing elements:Elements)
        where Elements:Sequence, Elements.Element == HTML.Element<Key>
    {
        self.init()
        self.freeze(elements)
    }
    @inlinable public 
    init(freezing element:HTML.Element<Key>)
    {
        self.init()
        self.freeze(element)
    }
    
    @inlinable public mutating 
    func freeze(_ element:HTML.Element<Key>)
    {
        element.node.rendered(into: &self.literals, anchors: &self.anchors)
    }
    @inlinable public mutating 
    func freeze<Elements>(_ elements:Elements)
        where Elements:Sequence, Elements.Element == HTML.Element<Key>
    {
        for element:HTML.Element<Key> in elements 
        {
            element.node.rendered(into: &self.literals, anchors: &self.anchors)
        }
    }
}