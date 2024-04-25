//
//  DevelopmentApp.swift
//  Development
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import DomainLayer
import PresentationLayer

@main
struct DevelopmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .development, licenseDriver: MockLicenseDriver(getLicenses: .samples))
        }
    }
}
