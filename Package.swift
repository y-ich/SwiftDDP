// swift-tools-version:5.0.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftDDP",
    platforms: [
        .macOS(.v10_12), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftDDP",
            targets: ["SwiftDDP"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .branch("master")),
        .package(url: "https://github.com/y-ich/SwiftWebSocket.git", from: "2.8.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftDDP",
            dependencies: ["XCGLogger", "CryptoSwift", "SwiftWebSocket"],
            path: "Sources"),
        .testTarget(
            name: "SwiftDDPTests",
            dependencies: ["SwiftDDP"],
            path: "SwiftDDPTests"),
    ],
    swiftLanguageVersions: [.v5]
)
