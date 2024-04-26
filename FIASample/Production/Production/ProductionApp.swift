//
//  ProductionApp.swift
//  Production
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import FIASamplePackage

@main
struct ProductionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .production)
        }
    }
}
