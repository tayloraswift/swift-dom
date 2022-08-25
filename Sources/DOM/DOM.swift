public 
enum DOM 
{
    @available(*, deprecated, renamed: "Flattened")
    public 
    typealias Template = Flattened 

    @inlinable public static 
    func escape<S>(_ unescaped:S) -> String where S:StringProtocol
    {
        var string:String = ""
        for character:Character in unescaped 
        {
            switch character 
            {
            case "<"            : string += "&lt;"
            case ">"            : string += "&gt;"
            case "&"            : string += "&amp;"
            case "'"            : string += "&apos;"
            case "\""           : string += "&quot;"
            case let character  : string.append(character)
            }
        }
        return string
    }
}