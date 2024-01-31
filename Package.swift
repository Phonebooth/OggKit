// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.5"
let package = Package(
    name: "OggKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v14)
    ],
    products: [
        .library(
            name: "OggKit",
            targets: ["OggKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OggKit", 
            url: "https://github.com/Phonebooth/OggKit/releases/download/" + version + "/OggKit.xcframework.zip",
            checksum: "1ee95dbe3cc824508fb08618c54a328a2b6926685082f0a2a4cf3688c10940b6"
        )
    ]
)
