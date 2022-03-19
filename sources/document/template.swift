@frozen public
struct DocumentTemplate<ID, Storage> where ID:Hashable, Storage:Collection
{
    public 
    let literals:Storage 
    public 
    let anchors:[(id:ID, index:Storage.Index)]
    
    @inlinable public 
    init(literals:Storage, anchors:[(id:ID, index:Storage.Index)])
    {
        self.literals   = literals 
        self.anchors    = anchors 
    }
    
    @inlinable public 
    func apply<Substitution>(_ substitutions:(ID) throws -> Substitution?) rethrows -> [Storage.SubSequence]
        where Substitution:Sequence, Substitution.Element == Storage.SubSequence
    {
        var start:Storage.Index = literals.startIndex
        var segments:[Storage.SubSequence] = []
        for (id, index):(ID, Storage.Index) in self.anchors 
        {
            guard let substitution:Substitution = try substitutions(id)
            else 
            {
                continue 
            }
            if start < index 
            {
                segments.append(self.literals[start ..< index])
                start = index 
            }
            segments.append(contentsOf: substitution)
        }
        if start < self.literals.endIndex 
        {
            segments.append(self.literals[start...])
        }
        return segments
    }
    @inlinable public 
    func apply(_ substitutions:[ID: Storage.SubSequence]) -> [Storage.SubSequence]
    {
        self.apply { substitutions[$0].map(CollectionOfOne<Storage.SubSequence>.init(_:)) }
    }
    @inlinable public 
    func apply(_ substitutions:[ID: Storage]) -> [Storage.SubSequence]
    {
        self.apply { substitutions[$0].map { CollectionOfOne<Storage.SubSequence>.init($0[...]) } }
    }
}
extension DocumentTemplate where Storage:RangeReplaceableCollection, Storage.Element == UInt8
{
    @inlinable public 
    func apply<Domain>(_ substitutions:[ID: DocumentElement<Domain, ID>]) -> [Storage.SubSequence]
    {
        self.apply { substitutions[$0]?.template(of: Storage.self).apply(substitutions) ?? [] }
    }
}
extension DocumentTemplate:Sendable where Storage:Sendable, Storage.Index:Sendable, ID:Sendable
{
}

extension DocumentElement 
{
    @inlinable public 
    func template<UTF8>(of _:UTF8.Type) -> DocumentTemplate<ID, UTF8>
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        var output:UTF8 = .init()
        var anchors:[(id:ID, index:UTF8.Index)] = []
        self.render(into: &output, anchors: &anchors)
        return .init(literals: output, anchors: anchors)
    }
    @inlinable public 
    func render<UTF8>(as _:UTF8.Type) -> UTF8
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        var output:UTF8 = .init()
        var anchors:[(id:ID, index:UTF8.Index)] = []
        self.render(into: &output, anchors: &anchors)
        return output 
    }
    @inlinable public 
    func render<UTF8>(into output:inout UTF8, anchors:inout [(id:ID, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        let attributes:[String: String], 
            children:[Self]??, 
            type:String, 
            id:ID?
        switch self 
        {
        case .root      (let foreign): 
            output.append(contentsOf: foreign.render(as: UTF8.self))
            return 
        case .text      (escaped: let text):
            output.append(contentsOf: text.utf8)
            return 
        
        case .leaf      (let element, id: let identifier, attributes: let dictionary): 
            attributes  = dictionary
            children    = element.void ? .none : .some(nil) 
            type        = element.name
            id          = identifier 
        case .container (let element, id: let identifier, attributes: let dictionary, content: let content):
            attributes  = dictionary
            children    = .some(content)
            type        = element.name
            id          = identifier
        
        case .anchor    (id: let id):
            anchors.append((id, output.endIndex))
            return 
        }
        
        output.append(0x3c) // '<'
        output.append(contentsOf: type.utf8) 
        for (key, value):(String, String) in attributes.sorted(by: { $0.key < $1.key })
        { 
            // ' '
            output.append(                               0x20)
            output.append(contentsOf: key.utf8)
            // '="'
            output.append(contentsOf:             [0x3d, 0x22])
            output.append(contentsOf: value.utf8)
            // '"'
            output.append(                               0x22)
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
            child.render(into: &output, anchors: &anchors)
        }
        output.append(contentsOf: [0x3c, 0x2f]) // '</'
        output.append(contentsOf: type.utf8) 
        output.append(0x3e) // '>'
    }
}
extension AnyDocumentRoot 
{
    @inlinable public 
    func template<UTF8>(of type:UTF8.Type) -> DocumentTemplate<ID, UTF8>
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        self.element.template(of: type) 
    }
    @inlinable public 
    func render<UTF8>(as type:UTF8.Type) -> UTF8
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        self.element.render(as: type) 
    }
    @inlinable public 
    func render<UTF8>(into output:inout UTF8, anchors:inout [(id:ID, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        self.element.render(into: &output, anchors: &anchors) 
    }
}
