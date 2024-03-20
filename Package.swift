// swift-tools-version:5.10
import PackageDescription
import CompilerPluginSupport

let package:Package = .init(
    name: "swift-dom",
    platforms: [.macOS(.v14), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "HTML", targets: ["HTML"]),
        .library(name: "DynamicLookupMacro", targets: ["DynamicLookupMacro"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax", from: "510.0.1"),
    ],
    targets: [
        .target(name: "DOM",
            dependencies: [
                .target(name: "DynamicLookupMacro"),
            ]),

        .target(name: "HTML",
            dependencies: [
                .target(name: "DOM"),
            ]),

        .target(name: "DynamicLookupMacro",
            dependencies: [
                .target(name: "DynamicMemberMacros"),
            ],
            path: "Macros/DynamicLookupMacro"),

        .macro(name: "DynamicMemberMacros",
            dependencies: [
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
            ],
            path: "Plugins/DynamicMemberMacros"),
    ])
