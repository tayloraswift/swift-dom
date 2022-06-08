// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swift-structured-document",
    products: 
    [
        .library(name: "DOM", targets: ["HTML", "SVG", "RSS"]),
    ],
    dependencies: 
    [
        .package(url: "https://github.com/kelvin13/swift-resource.git", from: "0.1.6"),
    ],
    targets: 
    [
        .target(name: "DOM", 
            dependencies: 
            [
                .product(name: "Resource", package: "swift-resource"),
            ], 
            path: "sources/dom", 
            exclude: 
            [
            ]),
        .target(name: "HTML",
            dependencies: 
            [
                .product(name: "Resource", package: "swift-resource"),
                .target(name: "DOM")
            ],
            path: "sources/html",
            exclude: 
            [
            ]),
        .target(name: "RSS",
            dependencies: 
            [
                .target(name: "DOM"),
            ],
            path: "sources/rss",
            exclude: 
            [
            ]),
        .target(name: "SVG",
            dependencies: 
            [
                .target(name: "DOM"),
                .target(name: "HTML")
            ],
            path: "sources/svg",
            exclude: 
            [
            ]),
    ]
)
