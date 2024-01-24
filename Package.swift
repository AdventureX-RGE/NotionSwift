// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotionSwift",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "NotionSwift",
            targets: ["NotionSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rinsuki/FoundationWithNetworking", .exactItem("0.1.0"))
    ],
    targets: [
        .target(
            name: "NotionSwift",
            dependencies: [
                .product(name: "FoundationWithNetworking", package: "FoundationWithNetworking")
            ]
        ),
        .testTarget(
            name: "NotionSwiftTests",
            dependencies: ["NotionSwift"]
        ),
    ]
)
