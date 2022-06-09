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
        let literals:Storage 
        public 
        let anchors:[(key:Key, index:Storage.Index)]
        
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
        func apply<Substitution>(substitutions:[Key: Substitution]) -> [Storage.SubSequence]
            where Substitution:Collection, Substitution.SubSequence == Storage.SubSequence
        {
            self.apply(substitutions: substitutions) { _ in nil }
        }
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
    @inlinable public static 
    var empty:Self 
    {
        .init(literals: .init(), anchors: [])
    }
    @inlinable public 
    init<Dynamic, Domain>(freezing dynamic:Dynamic)
        where Domain:DocumentDomain, Dynamic:Sequence, Dynamic.Element == DOM.Element<Domain, Key>
    {
        var output:Storage = .init()
        var anchors:[(key:Key, index:Storage.Index)] = []
        for element:Dynamic.Element in dynamic 
        {
            element.rendered(into: &output, anchors: &anchors)
        }
        self.init(literals: output, anchors: anchors)
    }
    @inlinable public 
    init<Domain>(freezing dynamic:DOM.Element<Domain, Key>)
        where Domain:DocumentDomain
    {
        self.init(freezing: CollectionOfOne<DOM.Element<Domain, Key>>.init(dynamic))
    }
    @inlinable public 
    init<Domain>(freezing dynamic:DOM.Root<Domain, Key>)
        where Domain:DocumentDomain
    {
        self.init(freezing: dynamic.element)
    }
    
    /* @inlinable public 
    func apply<Domain>(_ substitutions:[Key: DOM.Element<Domain, Key>]) -> [Storage.SubSequence]
    {
        self.apply { substitutions[$0].map(Self.init(freezing:))?.apply(substitutions) ?? [] }
    }
    @inlinable public 
    func apply<Domain>(_ substitutions:[Key: DOM.Element<Domain, Never>]) -> [Storage.SubSequence]
    {
        self.apply { substitutions[$0].map{ CollectionOfOne<Storage.SubSequence>.init($0.rendered(as: Storage.self)[...]) }}
    }
    @inlinable public 
    func apply<Domain>(_ substitutions:(Key) throws -> DOM.Element<Domain, Never>?) rethrows -> [Storage.SubSequence]
    {
        try self.apply { try substitutions($0).map{ CollectionOfOne<Storage.SubSequence>.init($0.rendered(as: Storage.self)[...]) }}
    } */
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
extension DOM.Root where Anchor == Never
{
    @inlinable public 
    func rendered<UTF8>(as type:UTF8.Type) -> UTF8
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        self.element.rendered(as: type) 
    }
}
extension DOM.Root 
{
    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8, anchors:inout [(key:Anchor, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        self.element.rendered(into: &output, anchors: &anchors) 
    }
}