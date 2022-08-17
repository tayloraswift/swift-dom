// swift-tools-version:5.6
import PackageDescription

#if os(Linux) || os(macOS)
let tools:(products:[Product], dependencies:[Package.Dependency], targets:[Target]) = 
(
    products: 
    [
    ],
    dependencies: 
    [
        .package(url: "https://github.com/kelvin13/swift-package-factory.git", branch: "master"),
    ],
    targets:
    [
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
