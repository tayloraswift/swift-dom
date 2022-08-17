public
struct MissingTargetError:Error 
{
    public
    let name:String
    public 
    init(name:String)
    {
        self.name = name 
    }
}
extension MissingTargetError:CustomStringConvertible
{
    public 
    var description:String 
    {
        "target '\(self.name)' is not a swift source module in this package"
    }
}
