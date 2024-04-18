//
//  ContentView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

public struct ContentView: View {
    private let buildScheme: BuildScheme
    private let licenseDriver: LicenseDriverProtocol
    private let logDriver: LogDriverProtocol

    public init(buildScheme: BuildScheme, licenseDriver: LicenseDriverProtocol, logDriver: LogDriverProtocol) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }

    public var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    LicenseListView(licenseDriver: licenseDriver, logDriver: logDriver)
                } label: {
                    Text("Licenses")
                }
            }
            .navigationTitle(buildScheme.name)
        }
    }
}

extension BuildScheme {
    var name: String {
        switch self {
        case .development:
            "Development"
        case .production:
            "Production"
        }
    }
}

#Preview("Development") {
    ContentView(buildScheme: .development, licenseDriver: MockLicenseDriver(), logDriver: MockLogDriver())
}

#Preview("Production") {
    ContentView(buildScheme: .production, licenseDriver: MockLicenseDriver(), logDriver: MockLogDriver())
}
