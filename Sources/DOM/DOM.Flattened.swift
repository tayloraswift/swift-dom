extension DOM.Flattened:Equatable where Key:Equatable
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
extension DOM.Flattened:Hashable where Key:Hashable
{
    @inlinable public  
    func hash(into hasher:inout Hasher) 
    {
        self.literals.hash(into: &hasher)
        for (key, index):(Key, Int) in self.anchors 
        {
            key.hash(into: &hasher)
            index.hash(into: &hasher)
        }
    }
}

extension DOM 
{
    @frozen public
    enum Substitution<Key, Segment> where Segment:Sequence 
    {
        case key(Key)
        case segment(Segment)
    }
    
    @frozen public
    struct Flattened<Key> 
    {
        public
        typealias Anchor = (key:Key, index:Int)
        
        public 
        var literals:[UInt8] 
        public 
        var anchors:[Anchor]
        
        @inlinable public
        var isEmpty:Bool 
        {
            self.anchors.isEmpty && self.literals.isEmpty
        }
        
        @inlinable public 
        init(literals:[UInt8], anchors:[Anchor])
        {
            self.literals   = literals 
            self.anchors    = anchors 
        }
    }
}
extension DOM.Flattened where Key:Hashable
{            
    @inlinable public 
    func rendered<Segment, Output>(as _:Output.Type = Output.self, 
        substituting segments:[Key: Segment]) -> Output
        where   Output:RangeReplaceableCollection, Output.Element == UInt8,
                Segment:Collection, Segment.Element == UInt8
    {
        self.rendered(as: Output.self) { segments[$0] }
    }
}
extension DOM.Flattened 
{
    @inlinable public 
    func rendered<Segment, Output>(as _:Output.Type = Output.self, 
        _ render:(Key) throws -> Segment?) rethrows -> Output
        where   Output:RangeReplaceableCollection, Output.Element == UInt8,
                Segment:Collection, Segment.Element == UInt8
    {
        var output:Output = .init()
            output.reserveCapacity(self.literals.underestimatedCount)

        var start:Int = self.literals.startIndex
        for (key, index):(Key, Int) in self.anchors 
        {
            guard let segment:Segment = try render(key)
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
    func map<T>(_ transform:(Key) throws -> T) rethrows -> DOM.Flattened<T> 
        where T:Hashable 
    {
        .init(literals: self.literals, anchors: try self.anchors.map 
        { 
            (try transform($0.key), $0.index) 
        })
    }
}
extension DOM.Flattened 
{
    @inlinable public 
    func transform<T, Segment>(_ transform:(Key) throws -> DOM.Substitution<T, Segment>) 
        rethrows -> DOM.Flattened<T>
        where T:Hashable, Segment:Sequence, Segment.Element == UInt8
    {
        var iterator:Array<Anchor>.Iterator = self.anchors.makeIterator()
        var anchors:[(key:T, index:Int)] = []
        while let anchor:Anchor = iterator.next()
        {
            switch try transform(anchor.key)
            {
            case .key(let key): 
                anchors.append((key, anchor.index))
            case .segment(let segment): 
                var literals:[UInt8] = []
                    literals.reserveCapacity(self.literals.count)
                var source:Int = anchor.index
                literals.append(contentsOf: self.literals[..<source])
                literals.append(contentsOf: segment)
                while let anchor:Anchor = iterator.next()
                {
                    if  source < anchor.index 
                    {
                        literals.append(contentsOf: 
                            self.literals[source ..< anchor.index])
                        source = anchor.index 
                    }
                    switch try transform(anchor.key)
                    {
                    case .key(let key): 
                        anchors.append((key, literals.endIndex))
                    case .segment(let segment): 
                        literals.append(contentsOf: segment)
                    }
                }
                if source < self.literals.endIndex 
                {
                    literals.append(contentsOf: self.literals[source...])
                }
                return .init(literals: literals, anchors: anchors)
            }
        }
        return .init(literals: self.literals, anchors: anchors)
    }
}
extension DOM.Flattened 
{
    @inlinable public 
    init()
    {
        self.literals = .init()
        self.anchors = []
    }
}
extension DOM.Substitution:Sendable where Key:Sendable, Segment:Sendable
{
}
extension DOM.Flattened:Sendable where Key:Sendable
{
}
