

extension SIMD2 where Scalar == UInt8 
{
    var slug:UInt16 
    {
        unsafeBitCast(self, to: UInt16.self)
    }
}

extension SIMD4 where Scalar == UInt8 
{
    var slug:UInt32 
    {
        unsafeBitCast(self, to: UInt32.self)
    }
}

extension SIMD8 where Scalar == UInt8 
{
    var slug:UInt64 
    {
        unsafeBitCast(self, to: UInt64.self)
    }
}