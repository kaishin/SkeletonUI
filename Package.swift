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
    targets: [
        .target(
            name: "SkeletonUI"
        )
    ],
    swiftLanguageVersions: [.v5]
)
