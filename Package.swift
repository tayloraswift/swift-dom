// swift-tools-version:5.6
import PackageDescription

#if os(Linux) || os(macOS)
let tools:(products:[Product], dependencies:[Package.Dependency], targets:[Target]) = 
(
    products: 
    [
        .plugin(name: "FactoryPlugin",  targets: ["FactoryPlugin"]),
    ],
    dependencies: 
    [
        .package(url: "https://github.com/kelvin13/swift-system-extras.git", from: "0.1.0"),
        .package(url: "https://github.com/apple/swift-syntax.git", branch: "swift-DEVELOPMENT-SNAPSHOT-2022-08-15-a"),
    ],
    targets:
    [
        .plugin(name: "FactoryPlugin", 
            capability: .command(
                intent: .custom(verb: "factory", description: "generate mechanized sources"), 
                permissions: 
                [
                    //.writeToPackageDirectory(reason: "factory emits source files")
                ]),
            dependencies: 
            [
                .target(name: "Factory"),
            ]), 
        .executableTarget(name: "Factory", 
            dependencies: 
            [
                .product(name: "SystemExtras",      package: "swift-system-extras"),
                .product(name: "SwiftSyntax",       package: "swift-syntax"),
                .product(name: "SwiftSyntaxParser", package: "swift-syntax"),
            ]), 
    ]
)
#else  
let tools:(products:[Product], dependencies:[Package.Dependency], targets:[Target]) = ([], [], [])
#endif 

let package:Package = .init(
    name: "swift-dom",
    products: tools.products +
    [
        .library(name: "DOM", targets: ["DOM"]),
        .library(name: "HTML", targets: ["HTML"]),
    ],
    dependencies: tools.dependencies,
    targets: tools.targets +
    [
        .target(name: "DOM"),
        .target(name: "HTML",
            dependencies: 
            [
                .target(name: "DOM")
            ]),
        // .target(name: "RSS",
        //     dependencies: 
        //     [
        //         .target(name: "DOM"),
        //     ]),
        // .target(name: "SVG",
        //     dependencies: 
        //     [
        //         .target(name: "DOM"),
        //         .target(name: "HTML")
        //     ]),
    ]
)
