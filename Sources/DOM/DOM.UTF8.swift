extension DOM
{
    @frozen @usableFromInline
    struct UTF8
    {
        @usableFromInline
        let codeunit:UInt8

        @inlinable
        init(_ codeunit:UInt8)
        {
            self.codeunit = codeunit
        }
    }
}
extension DOM.UTF8
{
    @inlinable static
    func += (utf8:inout [UInt8], self:Self)
    {
        switch self.codeunit
        {
        case 0x26: // '&'
            utf8 += "&amp;".utf8
        case 0x3C: // '<'
            utf8 += "&lt;".utf8
        case 0x3E: // '>'
            utf8 += "&gt;".utf8

        case let literal:
            utf8.append(literal)
        }
    }
}
