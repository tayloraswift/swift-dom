extension DOM 
{
    @frozen public 
    enum Node<Container, Leaf, Anchor> where 
        Container:CustomStringConvertible, Leaf:CustomStringConvertible
    {
        case value      (Value<Anchor>)
        case leaf       (Leaf,      attributes:[Value<Anchor>])
        case container  (Container, attributes:[Value<Anchor>], content:[Self]) 

        @inlinable public 
        init<S>(_ string:S) where S:StringProtocol 
        {
            self = .value(.init(string))
        }
        @inlinable public 
        init<S>(escaped string:S) where S:StringProtocol 
        {
            self = .value(.init(escaped: string))
        }
    }
}
extension DOM.Node 
{
    @inlinable public 
    var plain:String 
    {
        switch self 
        {
        case .leaf      (_, attributes: _): 
            return ""
        
        case .container (_, attributes: _, content: let content):
            return content.map(\.plain).joined()
        
        case .value(let value):
            return value.withUTF8 { String.init(decoding: $0, as: Unicode.UTF8.self) }
        }
    }

    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8, anchors:inout [(key:Anchor, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        let attributes:[DOM.Value<Anchor>], 
            children:[Self]?, 
            type:String
        switch self 
        {
        case .leaf      (let element, attributes: let items): 
            attributes  = items
            children    = nil
            type        = element.description
        
        case .container (let element, attributes: let items, content: let content):
            attributes  = items
            children    = content
            type        = element.description
        
        case .value     (let value):
            if case .anchor(let anchor) = value 
            {
                anchors.append((anchor, output.endIndex))
            }
            else 
            {
                value.withUTF8 
                {
                    output.append(contentsOf: $0)
                }
            }
            return 
        }
        
        output.append(0x3c) // '<'
        output.append(contentsOf: type.utf8) 
        for attribute:DOM.Value<Anchor> in attributes
        { 
            // ' '
            output.append(0x20)
            if case .anchor(let anchor) = attribute 
            {
                anchors.append((anchor, output.endIndex))
            }
            else 
            {
                attribute.withUTF8 
                {
                    output.append(contentsOf: $0)
                }
            }
        }
        output.append(0x3e) // '>'

        guard let children:[Self] 
        else 
        {
            return 
        }
        for child:Self in children 
        {
            child.rendered(into: &output, anchors: &anchors)
        }
        output.append(contentsOf: [0x3c, 0x2f]) // '</'
        output.append(contentsOf: type.utf8) 
        output.append(0x3e) // '>'
    }
}
extension DOM.Node where Anchor == Never
{
    @inlinable public 
    func rendered<UTF8>(as _:UTF8.Type) -> UTF8
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        var output:UTF8 = .init()
        var anchors:[(key:Anchor, index:UTF8.Index)] = []
        self.rendered(into: &output, anchors: &anchors)
        return output 
    }
    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8)
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        var anchors:[(key:Anchor, index:UTF8.Index)] = []
        self.rendered(into: &output, anchors: &anchors)
    }
}