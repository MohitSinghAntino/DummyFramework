// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DummySDK",
    platforms: [
        .iOS(.v12) // Change this to your min iOS version
    ],
    products: [
        .library(
            name: "DummySDK",
            targets: ["DummySDK"]
        ),
    ],
    targets: [
        .target(
            name: "DummySDK",
            dependencies: [],
            path: "DummySDK" // <-- Points to your existing code folder
        ),
        .testTarget(
            name: "DummySDKTests",
            dependencies: ["DummySDK"],
            path: "Tests/DummySDKTests"
        )
    ]
)

