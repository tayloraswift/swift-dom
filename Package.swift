// swift-tools-version:6.0
import PackageDescription
import CompilerPluginSupport

let package:Package = .init(
    name: "swift-dom",
    platforms: [.macOS(.v14), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "DOM", targets: ["DOM"]),
        .library(name: "HTML", targets: ["HTML"]),

        .library(name: "DynamicMemberFactoryMacro", targets: ["DynamicMemberFactoryMacro"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax", from: "602.0.0"),
    ],
    targets: [
        .target(name: "DOM",
            dependencies: [
                // .target(name: "DynamicMemberFactoryMacro"),
            ],
            //  We are manually inlining the macro-generated code from these two files in order
            //  to enable cross-compilation for this package, and also to improve build speeds.
            exclude: [
                "HTML/HTML.Attribute.swift",
                "SVG/SVG.Attribute.swift",
            ]),

        .target(name: "HTML",
            dependencies: [
                .target(name: "DOM"),
            ]),

        .target(name: "DynamicMemberFactoryMacro",
            dependencies: [
                .target(name: "DynamicLookupMacros"),
            ],
            path: "Macros/DynamicMemberFactoryMacro"),

        .macro(name: "DynamicLookupMacros",
            dependencies: [
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
            ],
            path: "Macros/DynamicLookupMacros"),
    ])
