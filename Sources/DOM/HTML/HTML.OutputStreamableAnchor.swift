extension HTML
{
    /// A type that adds its ``Identifiable/id [requirement]`` property to its parent element’s
    /// `id` attribute when encoded with single-element subscript assignment. Behaves
    /// identically to an ordinary ``HTML.OutputStreamable`` value when streamed to an
    /// ``HTML.ContentEncoder``.
    public
    protocol OutputStreamableAnchor:HTML.OutputStreamable, Identifiable<String>
    {
    }
}
extension HTML.OutputStreamableAnchor
{
    /// Encodes the ``Identifiable/id [requirement]`` property to the parent element’s `id`
    /// attribute.
    @inlinable public static
    func |= (html:inout HTML.AttributeEncoder, self:Self)
    {
        html.id = self.id
    }
}
