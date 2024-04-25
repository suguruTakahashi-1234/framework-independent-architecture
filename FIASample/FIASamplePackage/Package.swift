// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASamplePackage",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FIASamplePackage",
            targets: ["FIASamplePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FIASamplePackage",
            dependencies: [
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
            ],
            plugins: [
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin"),
            ]
        ),
        .testTarget(
            name: "FIASamplePackageTests",
            dependencies: ["FIASamplePackage"]
        ),
    ]
)
