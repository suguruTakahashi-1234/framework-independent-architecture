// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASamplePackage",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "FIASamplePackage", targets: ["FIASamplePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/cybozu/LicenseList.git", from: "0.7.0"),
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        .target(
            name: "FIASamplePackage",
            dependencies: [
                .product(name: "LicenseList", package: "LicenseList")
            ],
            plugins: [
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin"),
            ]
        ),
        .testTarget(
            name: "FIASamplePackageTests",
            dependencies: [
                "FIASamplePackage"
            ]
        ),
    ]
)
