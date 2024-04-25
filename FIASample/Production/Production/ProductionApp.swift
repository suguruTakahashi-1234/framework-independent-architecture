//
//  ProductionApp.swift
//  Production
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import FIASamplePackage

@main
struct ProductionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .production, licenseDriver: LicenseDriver())
        }
    }
}
