// swift-tools-version:5.7
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DummySDK",
    platforms: [
        .iOS(.v12) // Change to your minimum iOS version
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
            path: "DummySDK", // Folder where your .swift files are
            resources: [
                // Include all resources from this folder (XIBs, images, storyboards, JSON, etc.)
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "DummySDKTests",
            dependencies: ["DummySDK"],
            path: "Tests/DummySDKTests"
        )
    ]
)

