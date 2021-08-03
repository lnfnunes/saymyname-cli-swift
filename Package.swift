// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "saymynamecli",
    products: [
        .executable(name: "saymynamecli", targets: ["saymynamecli"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.4")
    ],
    targets: [
        .target(name: "saymynamecli", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ]),
        .testTarget(name: "saymynamecliTests", dependencies: ["saymynamecli"]),
    ]
)