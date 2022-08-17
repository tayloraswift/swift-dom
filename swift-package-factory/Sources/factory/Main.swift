import SystemExtras 
import Factory  

@main 
enum Main 
{
    public static 
    func main() throws
    {
        for path:FilePath in CommandLine.arguments.dropFirst().map(FilePath.init(_:))
        {
            var output:FilePath = path.lexicallyNormalized() 
            if let `extension`:String = output.extension 
            {
                output.extension = "\(`extension`).swift"
            }
            else 
            {
                output.extension = "swift"
            }

            let transformed:String = try Factory.transform(source: try path.read(String.self), 
                filenameForDiagnostics: path.string)
            print("generating '\(output)'")
            try output.write(transformed)
        }
    }
}