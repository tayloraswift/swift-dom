import Swift 

@frozen public 
struct Vector2<T>:Hashable, Sendable where T:Hashable & Sendable
{
    /// The *x*-component of this vector.
    public 
    var x:T 
    /// The *y*-component of this vector.
    public 
    var y:T 
}

@frozen public 
struct Vector3<T>:Hashable, Sendable where T:Hashable & Sendable
{
    /// The *x*-component of this vector.
    public 
    var x:T 
    /// The *y*-component of this vector.
    public 
    var y:T 
    /// The *z*-component of this vector.
    public 
    var z:T 
}

@frozen public 
struct Vector4<T>:Hashable, Sendable where T:Hashable & Sendable
{
    /// The *x*-component of this vector.
    public 
    var x:T 
    /// The *y*-component of this vector.
    public 
    var y:T 
    /// The *z*-component of this vector.
    public 
    var z:T 
    /// The *w*-component of this vector.
    public 
    var w:T 
}

extension Vector2 where T:FixedWidthInteger 
{
}

extension Vector3 where T:FixedWidthInteger 
{
}

extension Vector4 where T:FixedWidthInteger 
{
}

extension Vector2 where T:BinaryFloatingPoint 
{
}

extension Vector3 where T:BinaryFloatingPoint 
{
}

extension Vector4 where T:BinaryFloatingPoint 
{
}