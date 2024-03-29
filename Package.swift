// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TransmissionAsyncNametag",
    platforms: [
        .iOS(.v16),
        .macOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TransmissionAsyncNametag",
            targets: ["TransmissionAsyncNametag"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log", from: "1.5.2"),

        .package(url: "https://github.com/OperatorFoundation/Chord", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/Datable", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/KeychainTypes", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/Nametag", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/Net", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/ShadowSwift", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/Straw", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/SwiftHexTools", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/TransmissionAsync", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TransmissionAsyncNametag",
            dependencies: [
                "Chord",
                "Datable",
                "KeychainTypes",
                "Nametag",
                "Net",
                "ShadowSwift",
                "Straw",
                "SwiftHexTools",
                "TransmissionAsync",

                .product(name: "Logging", package: "swift-log"),
            ]
        ),
        .testTarget(
            name: "TransmissionAsyncNametagTests",
            dependencies: ["TransmissionAsyncNametag"]),
    ],
    swiftLanguageVersions: [.v5]
)
