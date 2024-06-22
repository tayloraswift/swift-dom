extension DOM
{
    @usableFromInline
    protocol Attribute
    {
        var name:String { get }
    }
}
extension DOM.Attribute where Self:RawRepresentable<String>
{
    @inlinable
    var name:String { self.rawValue }
}
