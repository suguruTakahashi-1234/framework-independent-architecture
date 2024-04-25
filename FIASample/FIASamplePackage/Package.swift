// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASamplePackage",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "DependencyInjectionLayer", targets: ["DependencyInjectionLayer"]),
        .library(name: "DomainLayer", targets: ["DomainLayer"]),
        .library(name: "FrameworkLayer", targets: ["FrameworkLayer"]),
        .library(name: "PresentationLayer", targets: ["PresentationLayer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        .target(
            name: "DependencyInjectionLayer",
            dependencies: [
                "DomainLayer",
                "PresentationLayer",
                "FrameworkLayer"
            ]
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
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin"),
            ]
        ),
        .target(
            name: "PresentationLayer",
            dependencies: ["DomainLayer"]
        ),
        .testTarget(
            name: "FIASamplePackageTests",
            dependencies: [
                "DomainLayer",
                "FrameworkLayer",
                "PresentationLayer",
                "DependencyInjectionLayer",
            ]
        ),
    ]
)
