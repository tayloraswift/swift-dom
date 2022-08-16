extension DOM
{    
    @frozen public 
    struct Root<Domain, Anchor> where Domain:DocumentDomain
    {
        public 
        var attributes:[Element<Domain, Anchor>.Attribute]
        public
        var content:[Element<Domain, Anchor>]
        
        @inlinable public 
        var plain:String 
        {
            self.element.plain
        }
        
        @inlinable public 
        var element:Element<Domain, Anchor> 
        {
            .container(.root, attributes: self.attributes, content: self.content)
        }
        
        @inlinable public 
        init(
            @Element<Domain, Anchor>.Attributes attributes:() -> [Element<Domain, Anchor>.Attribute], 
            @Element<Domain, Anchor>.Content       content:() -> [Element<Domain, Anchor>] = { [] }) 
        {
            self.attributes = attributes()
            self.content    = content()
        }
        @inlinable public 
        init(
            @Element<Domain, Anchor>.Content content:() -> [Element<Domain, Anchor>]) 
        {
            self.attributes = []
            self.content    = content()
        }
        @inlinable public 
        init() 
        {
            self.attributes = []
            self.content    = []
        }
    }
}
extension DOM.Root:Sendable 
    where Anchor:Sendable, Domain.Leaf:Sendable, Domain.Container:Sendable
{
}
