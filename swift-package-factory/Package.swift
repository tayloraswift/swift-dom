// swift-tools-version:5.6
import PackageDescription

let package:Package = .init(
    name: "swift-package-factory",
    products: 
    [
        .executable(name: "factory",    targets: ["factory"]),
        .library(name: "Factory",       targets: ["Factory"]),
        .plugin(name: "FactoryPlugin",  targets: ["FactoryPlugin"]),
    ],
    dependencies: 
    [
        .package(url: "https://github.com/kelvin13/swift-system-extras.git", from: "0.1.0"),
        .package(url: "https://github.com/apple/swift-syntax.git", branch: "swift-DEVELOPMENT-SNAPSHOT-2022-08-15-a"),
    ],
    targets:
    [
        .target(name: "Factory", 
            dependencies: 
            [
                .product(name: "SystemExtras",      package: "swift-system-extras"),
                .product(name: "SwiftSyntax",       package: "swift-syntax"),
                .product(name: "SwiftSyntaxParser", package: "swift-syntax"),
            ]), 
        .executableTarget(name: "factory", 
            dependencies: 
            [
                .target(name: "Factory"),
            ]), 
        .plugin(name: "FactoryPlugin", 
            capability: .command(
                intent: .custom(verb: "factory", 
                    description: "generate swift sources from factory sources"), 
                permissions: 
                [
                    //.writeToPackageDirectory(reason: "factory emits source files")
                ]),
            dependencies: 
            [
                .target(name: "factory"),
            ]), 
        
        .target(name: "FactoryPluginValidExampleTarget", path: "Examples/ValidExamples"), 
        .target(name: "FactoryPluginInvalidExampleTarget", path: "Examples/InvalidExamples"), 
    ]
)
