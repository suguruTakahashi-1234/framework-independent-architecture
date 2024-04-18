// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASmaplePackage",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(name: "DomainLayer", targets: ["DomainLayer"]),
        .library(name: "FrameworkLayer", targets: ["FrameworkLayer"]),
        .library(name: "PresentationLayer", targets: ["PresentationLayer"]),
        .library(name: "DependencyInjectionLayer", targets: ["DependencyInjectionLayer"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/cybozu/LicenseList.git", from: "0.6.0"),
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),

        // An example of a heavy third-party library
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        .target(
            name: "DependencyInjectionLayer",
            dependencies: [
                "FrameworkLayer",
                "PresentationLayer",
            ]
        ),
        .target(
            name: "DomainLayer"
        ),
        .target(
            name: "FrameworkLayer",
            dependencies: [
//                .product(name: "LicenseList", package: "LicenseList")
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                "DomainLayer",
            ],
            plugins: [
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin")
            ]
        ),
        .target(
            name: "PresentationLayer",
            dependencies: [
                "DomainLayer",
            ]
        ),
        .testTarget(
            name: "FIASmaplePackageTests",
            dependencies: [
                "FrameworkLayer",
                "PresentationLayer",
            ]
        ),
    ]
)
