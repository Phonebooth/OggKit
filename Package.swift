// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.6"
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
            checksum: "bc0fc1eed6abddfe3547d0d674cf3dd0c37b0d8d09f765032a57e4317395172d"
        )
    ]
)
