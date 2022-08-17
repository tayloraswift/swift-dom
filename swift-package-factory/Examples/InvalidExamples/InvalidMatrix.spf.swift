func foo() 
{

    // this works because this is a declaration
    var x:Int = 0

    // this works because this is a declaration
    var y:Int = 0

    // this works because this is a declaration
    var z:Int = 0

    #if NEVER 
    for _:Int in 0 ..< 10 
    {
        // this does not work, because this is 
        // not a declaration, and @matrix is 
        // for declarations only
        @matrix(__variable__: variables)
        __variable__ += 1
    }
    #endif
}