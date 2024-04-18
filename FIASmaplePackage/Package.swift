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

// MARK: - Swift Upcoming Feature Flags

let swiftFlags = [
    "-enable-actor-data-race-checks",
]

/// Ref: Swift Upcoming Feature Flags Cheatsheet - https://zenn.dev/treastrain/articles/d2fd1b44e3ead5
extension SwiftSetting {
    static let strictConcurrency: Self = .enableExperimentalFeature("StrictConcurrency") // https://www.swift.org/documentation/concurrency/
    static let forwardTrailingClosures: Self = .enableUpcomingFeature("ForwardTrailingClosures") // SE-0286, Swift 5.3,  SwiftPM 5.8+
    static let existentialAny: Self = .enableUpcomingFeature("ExistentialAny") // SE-0335, Swift 5.6,  SwiftPM 5.8+
    static let bareSlashRegexLiterals: Self = .enableUpcomingFeature("BareSlashRegexLiterals") // SE-0354, Swift 5.7,  SwiftPM 5.8+
    static let conciseMagicFile: Self = .enableUpcomingFeature("ConciseMagicFile") // SE-0274, Swift 5.8,  SwiftPM 5.8+
    static let importObjcForwardDeclarations: Self = .enableUpcomingFeature("ImportObjcForwardDeclarations") // SE-0384, Swift 5.9,  SwiftPM 5.9+
    static let disableOutwardActorInference: Self = .enableUpcomingFeature("DisableOutwardActorInference") // SE-0401, Swift 5.9,  SwiftPM 5.9+
    static let deprecateApplicationMain: Self = .enableUpcomingFeature("DeprecateApplicationMain") // SE-0383, Swift 5.10, SwiftPM 5.10+
    static let isolatedDefaultValues: Self = .enableUpcomingFeature("IsolatedDefaultValues") // SE-0411, Swift 5.10, SwiftPM 5.10+
    static let globalConcurrency: Self = .enableUpcomingFeature("GlobalConcurrency") // SE-0412, Swift 5.10, SwiftPM 5.10+
    static let otherSwiftFlags: Self = .unsafeFlags(swiftFlags)
}

extension SwiftSetting: CaseIterable {
    public static var allCases: [Self] {
        [
            .strictConcurrency,
            .forwardTrailingClosures,
            .existentialAny,
            .bareSlashRegexLiterals,
            .conciseMagicFile,
            .importObjcForwardDeclarations,
            .disableOutwardActorInference,
            .deprecateApplicationMain,
            .isolatedDefaultValues,
            .globalConcurrency,
            .otherSwiftFlags,
        ]
    }
}

package.targets
    .filter { ![.system, .binary, .plugin, .macro].contains($0.type) }
    .forEach { $0.swiftSettings = SwiftSetting.allCases }
