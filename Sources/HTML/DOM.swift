@_exported import DOM

extension DOM.Root where Domain == HTML
{
    @inlinable public 
    func rendered<UTF8>(into output:inout UTF8, anchors:inout [(key:Anchor, index:UTF8.Index)]) 
        where UTF8:RangeReplaceableCollection, UTF8.Element == UInt8
    {
        output.append(contentsOf: "<!DOCTYPE html>".utf8)
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

extension DOM.Template 
{
    @inlinable public 
    init(freezing html:HTML.Root<Key>)
    {
        self.init()
        self.freeze(html)
    }
    @inlinable public mutating 
    func freeze(_ html:HTML.Root<Key>)
    {
        html.rendered(into: &self.literals, anchors: &self.anchors)
    }
}
