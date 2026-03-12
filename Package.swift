// swift-tools-version: 6.2
// Copyright Ryan Francesconi. All Rights Reserved.

import PackageDescription

let package = Package(
    name: "spfk-lame",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "lame", targets: ["lame"]),
        .library(name: "mpg123", targets: ["mpg123"]),
    ],
    targets: [
        .binaryTarget(
            name: "lame",
            path: "Frameworks/lame.xcframework"
        ),
        .binaryTarget(
            name: "mpg123",
            path: "Frameworks/mpg123.xcframework"
        ),
    ]
)
