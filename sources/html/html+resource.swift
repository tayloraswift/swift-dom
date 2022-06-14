import DOM
import Resource

extension DOM.Root where Domain == HTML
{
    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8, anchors:inout [(key:Anchor, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        // '<!DOCTYPE html>'
        output.append(contentsOf: 
            [0x3c, 0x21, 0x44, 0x4f, 0x43, 0x54, 0x59, 0x50, 0x45, 0x20, 0x68, 0x74, 0x6d, 0x6c, 0x3e])
        self.element.rendered(into: &output, anchors: &anchors)
    }
}
extension DOM.Root where Domain == HTML, Anchor == Never
{
    @inlinable public 
    func rendered<UTF8>(as type:UTF8.Type) -> UTF8
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        var output:UTF8 = .init()
        var anchors:[(key:Anchor, index:UTF8.Index)] = []
        self.rendered(into: &output, anchors: &anchors)
        return output 
    }
}

extension DOM.Template where Literals:RangeReplaceableCollection, Literals.Element == UInt8
{
    @inlinable public 
    init(freezing html:DOM.Root<HTML, Key>) 
    {
        self.init()
        self.freeze(html)
    }
    @inlinable public mutating 
    func freeze(_ html:DOM.Root<HTML, Key>)
    {
        html.rendered(into: &self.literals, anchors: &self.anchors)
    }
}
