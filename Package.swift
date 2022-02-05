// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swift-structured-document",
    products: 
    [
        .library    (name: "StructuredDocument",    targets: ["HTML", "SVG"]),
    ],
    dependencies: 
    [
    ],
    targets: 
    [
        .target(name: "StructuredDocument", 
            path: "sources/document", 
            exclude: 
            [
            ]),
        .target(name: "HTML",
            dependencies: 
            [
                .target(name: "StructuredDocument")
            ],
            path: "sources/html",
            exclude: 
            [
            ]),
        .target(name: "SVG",
            dependencies: 
            [
                .target(name: "StructuredDocument"),
                .target(name: "HTML")
            ],
            path: "sources/svg",
            exclude: 
            [
            ]),
    ]
)
