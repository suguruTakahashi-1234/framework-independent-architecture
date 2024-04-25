//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI

public enum BuildScheme: String {
    case development = "Development"
    case production = "Production"
}

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
            .navigationTitle(buildScheme.rawValue)
        }
    }
}

#Preview("Development") {
    ContentView(buildScheme: .development, licenseDriver: MockLicenseDriver(getLicenses: []))
}

#Preview("Production") {
    ContentView(buildScheme: .production, licenseDriver: MockLicenseDriver(getLicenses: []))
}
