extension SVG
{
    /// Encodes an SVG document with the provided closure, which includes the prefixed
    /// `<?xml version='1.0' encoding='UTF-8' standalone='no'?>` declaration.
    @inlinable public static
    func document(with encode:(inout ContentEncoder) throws -> ()) rethrows -> Self
    {
        var svg:Self = "<?xml version='1.0' encoding='UTF-8' standalone='no'?>"
        try encode(&svg.encoder)
        return svg
    }
}
