

enum OuterA
{
    enum InnerA:Sendable
    {
    }
    enum InnerB:Sendable
    {
    }
    enum InnerC:Sendable
    {
    }
}

enum OuterB
{
    enum InnerA:Sendable
    {
    }
    enum InnerB:Sendable
    {
    }
    enum InnerC:Sendable
    {
    }
}

enum OuterC
{
    enum InnerA:Sendable
    {
    }
    enum InnerB:Sendable
    {
    }
    enum InnerC:Sendable
    {
    }
}

extension OuterA:Sendable 
{
}

extension OuterB:Sendable 
{
}

extension OuterC:Sendable 
{
}