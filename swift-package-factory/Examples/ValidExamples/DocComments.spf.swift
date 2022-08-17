

enum HTTP 
{
    /// The numeric code for `ok`, 200.
    /// 
    /// ```swift
    /// // prints the number 200
    /// let string:String = 
    /// """
    /// \(HTTP.ok)
    /// """
    /// print(string)
    /// ```
    static 
    let ok:Int = 200
    /// The numeric code for `notFound`, 404.
    /// 
    /// ```swift
    /// // prints the number 404
    /// let string:String = 
    /// """
    /// \(HTTP.notFound)
    /// """
    /// print(string)
    /// ```
    static 
    let notFound:Int = 404
    /// The numeric code for `serverError`, 500.
    /// 
    /// ```swift
    /// // prints the number 500
    /// let string:String = 
    /// """
    /// \(HTTP.serverError)
    /// """
    /// print(string)
    /// ```
    static 
    let serverError:Int = 500

    /// basis elements render *exactly* as they do in source:
    /// ("a", 1), but they do not include surrounding trivia.
    var a:Never 
    {
        fatalError()
    }

    /// basis elements render *exactly* as they do in source:
    /// (b,  b: 2), but they do not include surrounding trivia.
    var b:Never 
    {
        fatalError()
    }

    /// basis elements render *exactly* as they do in source:
    /// (c), but they do not include surrounding trivia.
    var c:Never 
    {
        fatalError()
    }
}