extension DOM.Template:Equatable where Literals:Equatable
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
extension DOM.Template:Hashable where Literals:Hashable, Literals.Index:Hashable
{
    @inlinable public  
    func hash(into hasher:inout Hasher) 
    {
        self.literals.hash(into: &hasher)
        for (key, index):(Key, Literals.Index) in self.anchors 
        {
            key.hash(into: &hasher)
            index.hash(into: &hasher)
        }
    }
}

extension DOM 
{
    @frozen public
    enum Substitution<Key, Segment> where Key:Hashable, Segment:Sequence 
    {
        case key(Key)
        case segment(Segment)
    }
    
    @frozen public
    struct Template<Key, Literals> where Key:Hashable, Literals:Collection
    {
        public
        typealias Anchor = (key:Key, index:Literals.Index)
        
        public 
        var literals:Literals 
        public 
        var anchors:[Anchor]
        
        @inlinable public
        var isEmpty:Bool 
        {
            self.anchors.isEmpty && self.literals.isEmpty
        }
        
        @inlinable public 
        init(literals:Literals, anchors:[Anchor])
        {
            self.literals   = literals 
            self.anchors    = anchors 
        }
                
        @available(*, deprecated)
        @inlinable public 
        func compactMap<T>(_ transform:(Key) throws -> T?) rethrows -> Template<T, Literals> 
            where T:Hashable 
        {
            .init(literals: self.literals, anchors: try self.anchors.compactMap 
            { 
                anchor in try transform(anchor.key).map { ($0, anchor.index) } 
            })
        }
        @available(*, deprecated)
        @inlinable public 
        func apply<Substitution>(substitutions:[Key: Substitution]) -> [Literals.SubSequence]
            where Substitution:Collection, Substitution.SubSequence == Literals.SubSequence
        {
            self.apply(substitutions: substitutions) { _ in nil }
        }
        @available(*, deprecated)
        @inlinable public 
        func apply<Substitution>(substitutions:[Key: Substitution] = [:], 
            _ generate:(Key) throws -> Substitution?) 
            rethrows -> [Literals.SubSequence]
            where Substitution:Collection, Substitution.SubSequence == Literals.SubSequence
        {
            var start:Literals.Index = literals.startIndex
            var segments:[Literals.SubSequence] = []
            var cache:[Key: Substitution] = substitutions
            for (key, index):(Key, Literals.Index) in self.anchors 
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
extension DOM.Template 
{            
    @inlinable public 
    func rendered<Segment, Output>(as _:Output.Type = Output.self, 
        substituting cache:[Key: Segment]) 
        -> Output
        where   Output:RangeReplaceableCollection, Output.Element == Literals.Element,
                Segment:Collection, Segment.Element == Literals.Element
    {
        self.rendered(as: Output.self, substituting: cache) { _ in nil }
    }
    @inlinable public 
    func rendered<Segment, Output>(as _:Output.Type = Output.self, 
        substituting cache:[Key: Segment] = [:], 
        _ generate:(Key) throws -> Segment?) 
        rethrows -> Output
        where   Output:RangeReplaceableCollection, Output.Element == Literals.Element,
                Segment:Collection, Segment.Element == Literals.Element
    {
        var output:Output = .init()
            output.reserveCapacity(self.literals.underestimatedCount)

        var start:Literals.Index = self.literals.startIndex
        for (key, index):(Key, Literals.Index) in self.anchors 
        {
            guard let segment:Segment = try cache[key] ?? generate(key)
            else 
            {
                continue 
            }
            
            if  start < index 
            {
                output.append(contentsOf: self.literals[start ..< index])
                start = index 
            }
            output.append(contentsOf: segment)
        }
        if start < self.literals.endIndex 
        {
            output.append(contentsOf: self.literals[start...])
        }
        
        return output 
    }
    
    @inlinable public 
    func map<T>(_ transform:(Key) throws -> T) 
        rethrows -> DOM.Template<T, Literals> 
        where T:Hashable 
    {
        .init(literals: self.literals, anchors: try self.anchors.map 
        { 
            (try transform($0.key), $0.index) 
        })
    }
}
extension DOM.Template where Literals:RangeReplaceableCollection
{
    @inlinable public 
    func transform<T, Segment>(_ transform:(Key) throws -> DOM.Substitution<T, Segment>) 
        rethrows -> DOM.Template<T, Literals>
        where T:Hashable, Segment:Sequence, Segment.Element == Literals.Element
    {
        var iterator:Array<Anchor>.Iterator = self.anchors.makeIterator()
        var anchors:[(key:T, index:Literals.Index)] = []
        while let anchor:Anchor = iterator.next()
        {
            switch try transform(anchor.key)
            {
            case .key(let key): 
                anchors.append((key, anchor.index))
            case .segment(let segment): 
                var literals:Literals = .init()
                literals.append(contentsOf: self.literals[..<anchor.index])
                literals.append(contentsOf: segment)
                while let key:Key = iterator.next()?.key
                {
                    switch try transform(key)
                    {
                    case .key(let key): 
                        anchors.append((key, literals.endIndex))
                    case .segment(let segment): 
                        literals.append(contentsOf: segment)
                    }
                }
                return .init(literals: literals, anchors: anchors)
            }
        }
        return .init(literals: self.literals, anchors: anchors)
    }
}
extension DOM.Template where Literals:RangeReplaceableCollection, Literals.Element == UInt8
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
extension DOM.Substitution:Sendable where Key:Sendable, Segment:Sendable
{
}
extension DOM.Template:Sendable where Key:Sendable, Literals:Sendable, Literals.Index:Sendable
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
