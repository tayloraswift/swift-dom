

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen public
struct X<T>
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, (+))
    }
}

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen public
struct Y<U>
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, (-))
    }
}

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen public
struct Z<V>
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, (*))
    }
}

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen 
public
struct A
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, +)
    }
}

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen 
public
struct B
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, +)
    }
}

// this comment will be kept.
/// This doccomment will also be kept.
@resultBuilder
// this comment will stay, because the attribute 
// it is attached to was kept, and the attribute 
// above it has a doccomment attached
@frozen 
public
struct C
{
    public static 
    func buildBlock(_ components:Int...) -> Int 
    {
        components.reduce(0, +)
    }
}