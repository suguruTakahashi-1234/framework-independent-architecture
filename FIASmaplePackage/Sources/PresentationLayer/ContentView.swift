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

    public init(buildScheme: BuildScheme, licenseDriver: LicenseDriverProtocol) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
    }
    
    public var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    LicenseListView(licenseDriver: licenseDriver)
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
    ContentView(buildScheme: .development, licenseDriver: MockLicenseDriver())
}

#Preview("Production") {
    ContentView(buildScheme: .production, licenseDriver: MockLicenseDriver())
}
