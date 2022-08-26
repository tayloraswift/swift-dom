extension DOM 
{
    @frozen public 
    enum Value<Anchor>
    {
        indirect
        case anchor (Anchor)
        case inline (utf8:(UInt, UInt, UInt32, UInt16), count:UInt8)
        case outline(utf8:[UInt8])

        @inlinable public 
        init<S>(key:String, _ value:S) where S:StringProtocol
        {
            self.init(key: key, escaped: DOM.escape(value))
        }
        @inlinable public 
        init<S>(key:String, escaped value:S) where S:StringProtocol
        {
            self.init(escaped: "\(key)=\"\(value)\"")
        }

        @inlinable public 
        init<S>(_ string:S) where S:StringProtocol 
        {
            self.init(escaped: DOM.escape(string))
        }
        @inlinable public 
        init<S>(escaped string:S) where S:StringProtocol 
        {
            self.init(escaped: string.utf8)
        }
        @inlinable public 
        init<UTF8>(escaped utf8:UTF8) where UTF8:Collection, UTF8.Element == UInt8
        {
            typealias InlineUTF8 = (UInt, UInt, UInt32, UInt16)
            let count:Int = utf8.count
            if  MemoryLayout<InlineUTF8>.size < count
            {
                #if swift(>=5.6)
                self = .inline(utf8: withUnsafeTemporaryAllocation(
                    byteCount: MemoryLayout<InlineUTF8>.size, 
                    alignment: MemoryLayout<InlineUTF8>.alignment)
                {
                    $0.copyBytes(from: utf8)
                    return $0.load(as: InlineUTF8.self)
                }, count: .init(count))
                #else
                var inlined:InlineUTF8 = (0, 0, 0, 0)
                self = .inline(utf8: withUnsafeMutableBytes(of: &inlined)
                {
                    $0.copyBytes(from: utf8)
                    return $0.load(as: InlineUTF8.self)
                }, count: .init(count))
                #endif 
            }
            else 
            {
                self = .outline(utf8: .init(utf8))
            }
        }

        @inlinable public 
        func withUTF8<T>(_ body:(UnsafeBufferPointer<UInt8>) throws -> T) rethrows -> T
        {
            switch self 
            {
            case .anchor: 
                return try body(.init(start: nil, count: 0)) 
            case            .inline(utf8: let inlined, count: let count): 
                let count:Int = .init(count)
                return try withUnsafePointer(to: inlined) 
                {
                    try $0.withMemoryRebound(to: UInt8.self, capacity: count)
                    {
                        try body(.init(start: $0, count: count))
                    }
                }
            case            .outline(utf8: let outlined):
                return try outlined.withUnsafeBufferPointer(body)
            }
        }
    }
}