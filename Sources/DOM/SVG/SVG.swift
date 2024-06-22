@frozen public
struct SVG
{
    public
    var encoder:ContentEncoder

    /// Creates a completely empty SVG document.
    @inlinable public
    init()
    {
        self.encoder = .init()
    }
}
extension SVG
{
    /// Encodes an SVG fragment with the provided closure.
    ///
    /// To encode a complete document, use ``document(with:)``.
    @inlinable public
    init(with encode:(inout ContentEncoder) throws -> ()) rethrows
    {
        self.init()
        try encode(&self.encoder)
    }
}
extension SVG:ExpressibleByStringLiteral
{
    /// Creates an SVG document containing the **exact** contents of the given
    /// string literal.
    ///
    /// Use this with caution. This initializer performs no escaping or validation!
    @inlinable public
    init(stringLiteral:String)
    {
        self.init { $0.utf8 = [UInt8].init(stringLiteral.utf8) }
    }
}
extension SVG
{
    @inlinable public
    var utf8:[UInt8] { self.encoder.utf8 }
}
extension SVG:CustomStringConvertible
{
    @inlinable public
    var description:String
    {
        .init(decoding: self.encoder.utf8, as: Unicode.UTF8.self)
    }
}
