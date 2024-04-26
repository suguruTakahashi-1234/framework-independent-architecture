//
//  ProductionApp.swift
//  Production
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import PresentationLayer
import DomainLayer
import FrameworkLayer

@main
struct ProductionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .production, licenseDriver: LicenseDriver(), logDriver: LogDriver())
        }
    }
}
