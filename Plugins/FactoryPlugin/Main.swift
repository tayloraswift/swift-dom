import PackagePlugin

#if os(Linux)
import Glibc
#elseif os(macOS)
import Darwin 
#endif 

@main 
struct Main:CommandPlugin
{
    private static 
    func targets(context:PluginContext, filter:[String]) throws -> [SwiftSourceModuleTarget] 
    {
        var targets:[String: [SwiftSourceModuleTarget]] = [:]
        for target:any Target in context.package.targets 
        {
            guard let target:SwiftSourceModuleTarget = target as? SwiftSourceModuleTarget 
            else 
            {
                continue 
            }
            targets[target.name, default: []].append(target)
        }
        if filter.isEmpty 
        {
            return targets.sorted { $0.key < $1.key } .flatMap(\.value)
        }
        else 
        {
            return try filter.flatMap 
            {
                if let targets:[SwiftSourceModuleTarget] = targets[$0]
                {
                    return targets 
                }
                else 
                {
                    throw MissingTargetError.init(name: $0)
                }
            }
        }
    }
    func performCommand(context:PluginContext, arguments:[String]) throws 
    {
        let tool:PluginContext.Tool = try context.tool(named: "factory")
        for target:SwiftSourceModuleTarget in try Self.targets(context: context, filter: arguments) 
        {
            for file:File in target.sourceFiles
            {
                guard case .unknown = file.type 
                else 
                {
                    continue 
                }
                switch file.path.extension 
                {
                case "spf", "swiftpf", "factory":
                    switch system("\(tool.path.string) \(file.path.string)")
                    {
                    case 0: 
                        break 
                    case let code: 
                        print("failed to transform file '\(file.path.string)' (exit code: \(code))")
                    }
                default: 
                    continue 
                }
            }
        }
    }
}