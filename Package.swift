// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "sekeleton-ui",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SkeletonUI",
            targets: ["SkeletonUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.7.1")
    ],
    targets: [
        .target(
            name: "SkeletonUI"
        ),
        .testTarget(
            name: "SkeletonUISnapshotTests",
            dependencies: ["SkeletonUI", "SnapshotTesting"]
        ),
        .testTarget(
            name: "SkeletonUIUnitTests",
            dependencies: ["SkeletonUI"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
