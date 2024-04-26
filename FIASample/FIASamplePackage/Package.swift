// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASamplePackage",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "PresentationLayer", targets: ["PresentationLayer"]),
        .library(name: "DomainLayer", targets: ["DomainLayer"]),
        .library(name: "FrameworkLayer", targets: ["FrameworkLayer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        .target(
            name: "PresentationLayer",
            dependencies: ["DomainLayer"]
        ),
        .target(
            name: "DomainLayer",
            dependencies: []
        ),
        .target(
            name: "FrameworkLayer",
            dependencies: [
                "DomainLayer",
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
            ],
            plugins: [
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin")
            ]
        ),
        .testTarget(
            name: "FIASamplePackageTests",
            dependencies: [
                "PresentationLayer",
                "DomainLayer",
                "FrameworkLayer"
            ]
        ),
    ]
)
