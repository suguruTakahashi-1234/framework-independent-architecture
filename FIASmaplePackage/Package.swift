// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FIASmaplePackage",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "FIASmaplePackage",
            targets: ["FIASmaplePackage"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/cybozu/LicenseList.git", from: "0.6.0"),
        .package(url: "https://github.com/maiyama18/LicensesPlugin", from: "0.1.6"),

        // An example of a heavy third-party library
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.24.0"),
    ],
    targets: [
        .target(
            name: "FIASmaplePackage",
            dependencies: [
//                .product(name: "LicenseList", package: "LicenseList")
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk")
            ],
            plugins: [
                .plugin(name: "LicensesPlugin", package: "LicensesPlugin")
            ]
        ),
        .testTarget(
            name: "FIASmaplePackageTests",
            dependencies: ["FIASmaplePackage"]),
    ]
)
