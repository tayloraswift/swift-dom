extension SVG
{
    public
    protocol OutputStreamable
    {
        /// Encodes attributes to its parent element when encoded with **single-element
        /// subscript assignment**. Ignored when streamed generally to an
        /// ``SVG.ContentEncoder``.
        static
        func |= (svg:inout SVG.AttributeEncoder, self:Self)

        /// Encodes an instance of this type to the provided SVG stream.
        static
        func += (svg:inout SVG.ContentEncoder, self:Self)
    }
}
extension SVG.OutputStreamable
{
    /// Does nothing.
    @inlinable public static
    func |= (svg:inout SVG.AttributeEncoder, self:Self)
    {
    }
}
extension SVG.OutputStreamable where Self:StringProtocol
{
    @inlinable public static
    func += (svg:inout SVG.ContentEncoder, self:Self)
    {
        svg += self.utf8
    }
}
