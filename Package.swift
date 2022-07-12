// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swift-dom",
    products: 
    [
        .library(name: "DOM", targets: ["HTML", "SVG", "RSS"]),
    ],
    dependencies: 
    [
    ],
    targets: 
    [
        .target(name: "DOM"),
        .target(name: "HTML",
            dependencies: 
            [
                .target(name: "DOM")
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
                .target(name: "HTML")
            ]),
    ]
)
