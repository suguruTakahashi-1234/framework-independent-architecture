//
//  ProductionApp.swift
//  Production
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import PresentationLayer
import FrameworkLayer
import DependencyInjectionLayer

@main
struct ProductionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .production, licenseDriver: LicenseDriver(), logDriver: LogDriver())
        }
    }
}
