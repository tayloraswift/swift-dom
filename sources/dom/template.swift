extension DOM.Template:Equatable where Storage:Equatable
{
    @inlinable public static 
    func == (lhs:Self, rhs:Self) -> Bool 
    {
        guard   lhs.literals == rhs.literals, 
                lhs.anchors.count == rhs.anchors.count 
        else 
        {
            return false 
        }
        for index:Int in lhs.anchors.indices 
            where lhs.anchors[index] != rhs.anchors[index]
        {
            return false 
        }
        return true
    }
}
extension DOM.Template:Hashable where Storage:Hashable, Storage.Index:Hashable
{
    @inlinable public  
    func hash(into hasher:inout Hasher) 
    {
        self.literals.hash(into: &hasher)
        for (key, index):(Key, Storage.Index) in self.anchors 
        {
            key.hash(into: &hasher)
            index.hash(into: &hasher)
        }
    }
}

extension DOM 
{
    @frozen public
    struct Template<Key, Storage> where Key:Hashable, Storage:Collection
    {
        public 
        var literals:Storage 
        public 
        var anchors:[(key:Key, index:Storage.Index)]
        
        @inlinable public
        var isEmpty:Bool 
        {
            self.anchors.isEmpty && self.literals.isEmpty
        }
        
        @inlinable public 
        init(literals:Storage, anchors:[(key:Key, index:Storage.Index)])
        {
            self.literals   = literals 
            self.anchors    = anchors 
        }
        
        @inlinable public 
        func map<T>(_ transform:(Key) throws -> T) rethrows -> Template<T, Storage> 
            where T:Hashable 
        {
            .init(literals: self.literals, anchors: try self.anchors.map 
            { 
                (try transform($0.key), $0.index) 
            })
        }
        @inlinable public 
        func compactMap<T>(_ transform:(Key) throws -> T?) rethrows -> Template<T, Storage> 
            where T:Hashable 
        {
            .init(literals: self.literals, anchors: try self.anchors.compactMap 
            { 
                anchor in try transform(anchor.key).map { ($0, anchor.index) } 
            })
        }
        
        @inlinable public 
        func rendered<Substitution, Output>(as _:Output.Type = Output.self, 
            substituting cache:[Key: Substitution]) 
            -> Output
            where   Output:RangeReplaceableCollection, Output.Element == Storage.Element,
                    Substitution:Collection, Substitution.Element == Storage.Element
        {
            self.rendered(as: Output.self, substituting: cache) { _ in nil }
        }
        @inlinable public 
        func rendered<Substitution, Output>(as _:Output.Type = Output.self, 
            substituting cache:[Key: Substitution] = [:], 
            _ generate:(Key) throws -> Substitution?) 
            rethrows -> Output
            where   Output:RangeReplaceableCollection, Output.Element == Storage.Element,
                    Substitution:Collection, Substitution.Element == Storage.Element
        {
            var output:Output = .init()
                output.reserveCapacity(self.literals.underestimatedCount)

            var start:Storage.Index = literals.startIndex
            for (key, index):(Key, Storage.Index) in self.anchors 
            {
                guard let substitution:Substitution = try cache[key] ?? generate(key)
                else 
                {
                    continue 
                }
                
                if  start < index 
                {
                    output.append(contentsOf: self.literals[start ..< index])
                    start = index 
                }
                output.append(contentsOf: substitution)
            }
            if start < self.literals.endIndex 
            {
                output.append(contentsOf: self.literals[start...])
            }
            
            return output 
        }
        
        @available(*, deprecated)
        @inlinable public 
        func apply<Substitution>(substitutions:[Key: Substitution]) -> [Storage.SubSequence]
            where Substitution:Collection, Substitution.SubSequence == Storage.SubSequence
        {
            self.apply(substitutions: substitutions) { _ in nil }
        }
        @available(*, deprecated)
        @inlinable public 
        func apply<Substitution>(substitutions:[Key: Substitution] = [:], 
            _ generate:(Key) throws -> Substitution?) 
            rethrows -> [Storage.SubSequence]
            where Substitution:Collection, Substitution.SubSequence == Storage.SubSequence
        {
            var start:Storage.Index = literals.startIndex
            var segments:[Storage.SubSequence] = []
            var cache:[Key: Substitution] = substitutions
            for (key, index):(Key, Storage.Index) in self.anchors 
            {
                let substitution:Substitution
                 
                if let cached:Substitution = cache[key] 
                {
                    substitution = cached
                }
                else if let generated:Substitution = try generate(key)
                {
                    substitution = generated
                    cache[key] = generated
                }
                else 
                {
                    continue 
                }
                
                if  start < index 
                {
                    segments.append(self.literals[start ..< index])
                    start = index 
                }
                segments.append(substitution[...])
            }
            if start < self.literals.endIndex 
            {
                segments.append(self.literals[start...])
            }
            return segments
        }
    }
}

extension DOM.Template where Storage:RangeReplaceableCollection, Storage.Element == UInt8
{
    @inlinable public 
    init()
    {
        self.literals = .init()
        self.anchors = []
    }
    
    @inlinable public 
    init<Elements, Domain>(freezing elements:Elements)
        where Domain:DocumentDomain, Elements:Sequence, Elements.Element == DOM.Element<Domain, Key>
    {
        self.init()
        self.freeze(elements)
    }
    @inlinable public 
    init<Domain>(freezing element:DOM.Element<Domain, Key>)
        where Domain:DocumentDomain
    {
        self.init()
        self.freeze(element)
    }
    
    @inlinable public mutating 
    func freeze<Domain>(_ element:DOM.Element<Domain, Key>)
        where Domain:DocumentDomain
    {
        element.rendered(into: &self.literals, anchors: &self.anchors)
    }
    @inlinable public mutating 
    func freeze<Elements, Domain>(_ elements:Elements)
        where Domain:DocumentDomain, Elements:Sequence, Elements.Element == DOM.Element<Domain, Key>
    {
        for element:DOM.Element<Domain, Key> in elements 
        {
            element.rendered(into: &self.literals, anchors: &self.anchors)
        }
    }
}
extension DOM.Template:Sendable where Storage:Sendable, Storage.Index:Sendable, Key:Sendable
{
}

extension DOM.Element where Anchor == Never
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
extension DOM.Element 
{
    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8, anchors:inout [(key:Anchor, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        let attributes:[Attribute], 
            children:[Self]??, 
            type:String
        switch self 
        {
        case .bytes     (utf8: let utf8):
            output.append(contentsOf:      utf8)
            return
        case .text      (escaped: let text):
            output.append(contentsOf: text.utf8)
            return 
        
        case .leaf      (let element, attributes: let items): 
            attributes  = items
            children    = element.void ? .none : .some(nil) 
            type        = element.name
        case .container (let element, attributes: let items, content: let content):
            attributes  = items
            children    = .some(content)
            type        = element.name
        
        case .anchor    (let key):
            anchors.append((key, output.endIndex))
            return 
        }
        
        output.append(0x3c) // '<'
        output.append(contentsOf: type.utf8) 
        for (key, value):(String, Value) in attributes
        { 
            // ' '
            output.append(                               0x20)
            output.append(contentsOf: key.utf8)
            switch value 
            {
            case .void: 
                break
            case .text(let string):
                // '="'
                output.append(contentsOf:         [0x3d, 0x22])
                output.append(contentsOf: string.utf8)
                // '"'
                output.append(                           0x22)
            case .anchor(let key):
                // '="'
                output.append(contentsOf:         [0x3d, 0x22])
                anchors.append((key, output.endIndex))
                // '"'
                output.append(                           0x22)
            }
        }
        guard let enclosed:[Self]?  = children 
        else 
        {
            output.append(0x3e) // '>'
            return 
        }
        guard let content:[Self]    = enclosed
        else 
        {
            output.append(contentsOf: [0x2f, 0x3e]) // '/>'
            return 
        }
        
        output.append(0x3e) // '>'
        for child:Self in content 
        {
            child.rendered(into: &output, anchors: &anchors)
        }
        output.append(contentsOf: [0x3c, 0x2f]) // '</'
        output.append(contentsOf: type.utf8) 
        output.append(0x3e) // '>'
    }
}
