import Swift 

/// Models a `FooType`. Has a member 
/// named ``foo``.
@frozen public 
enum FooType 
{
    /// Returns the number `0`
    @inlinable public 
    var foo:Int 
    {
        0
    }
}

/// Models a `BarType`. Has a member 
/// named ``bar``.
@frozen public 
enum BarType 
{
    /// Returns the number `1`
    @inlinable public 
    var bar:Int 
    {
        1
    }
}

/// Models a `BazType`. Has a member 
/// named ``baz``.
@frozen public 
enum BazType 
{
    /// Returns the number `2`
    @inlinable public 
    var baz:Int 
    {
        2
    }
}

extension Int
{
    @inlinable public 
    var i:Int 
    {
        0
    }
    @inlinable public 
    var j:Int 
    {
        1
    }
    @inlinable public 
    var k:Int 
    {
        2
    }

    enum Cases:Int
    {
        case a
        case b
    }

    public static 
    var a:Self 
    {
        Cases.a.rawValue
    }

    public static 
    var b:Self 
    {
        Cases.b.rawValue
    }
}