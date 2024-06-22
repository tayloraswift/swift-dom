extension SVG
{
    @dynamicMemberLookup
    @frozen public
    struct AttributeEncoder:StreamingEncoder
    {
        @usableFromInline
        var utf8:[UInt8]

        @inlinable
        init(utf8:[UInt8] = [])
        {
            self.utf8 = utf8
        }
    }
}
extension SVG.AttributeEncoder
{
    /// Serializes an empty attribute, if the assigned boolean is true.
    /// Does nothing if it is false. The getter always returns false.
    @inlinable public
    subscript(name name:SVG.Attribute) -> Bool
    {
        get
        {
            false
        }
        set(bool)
        {
            self[name: name] = bool ? "" : nil
        }
    }

    @inlinable public
    subscript(name name:SVG.Attribute) -> String?
    {
        get
        {
            nil
        }
        set(text)
        {
            if  let text:String
            {
                self.utf8 += DOM.Property<SVG.Attribute>.init(name, text)
            }
        }
    }

    /// Sets the XML namespace, if non-nil. This should almost always be the string
    /// `"http://www.w3.org/2000/svg"`.
    @inlinable public
    var xmlns:String?
    {
        get { nil }
        set (value)
        {
            if  let value:String
            {
                self.utf8 += DOM.Property<XMLNS>.init(.xmlns, value)
            }
        }
    }
}
extension SVG.AttributeEncoder
{
    @inlinable public
    subscript(dynamicMember path:KeyPath<SVG.Attribute.Factory, SVG.Attribute>) -> Bool
    {
        get
        {
            false
        }
        set(bool)
        {
            self[name: SVG.Attribute.Factory.init()[keyPath: path]] = bool
        }
    }
    @inlinable public
    subscript(dynamicMember path:KeyPath<SVG.Attribute.Factory, SVG.Attribute>) -> String?
    {
        get
        {
            nil
        }
        set(text)
        {
            self[name: SVG.Attribute.Factory.init()[keyPath: path]] = text
        }
    }
}
