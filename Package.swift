// swift-tools-version:5.5
import PackageDescription

var plugins:[Package.Dependency] = []
#if swift(>=5.7) && (os(Linux) || os(macOS))
    plugins.append(.package(url: "https://github.com/kelvin13/swift-package-catalog", 
        from: "0.4.0"))
#endif

#if swift(>=5.8) && (os(Linux) || os(macOS))
    plugins.append(.package(url: "https://github.com/kelvin13/swift-package-factory", 
        branch: "swift-DEVELOPMENT-SNAPSHOT-2022-08-18-a"))
#endif 

let package = Package(
    name: "swift-dom",
    products: 
    [
        .library(name: "DOM",   targets: ["DOM"]),
        .library(name: "HTML",  targets: ["HTML"]),
        .library(name: "RSS",   targets: ["RSS"]),
        .library(name: "SVG",   targets: ["SVG"]),
    ],
    dependencies: plugins,
    targets: 
    [
        .target(name: "DOM"),
        .target(name: "HTML",
            dependencies: 
            [
                .target(name: "DOM"),
            ]),
        .target(name: "RSS",
            dependencies: 
            [
                .target(name: "DOM"),
            ]),
        .target(name: "SVG",
            dependencies: 
            [
                .target(name: "DOM"),
            ]),
    ]
)
