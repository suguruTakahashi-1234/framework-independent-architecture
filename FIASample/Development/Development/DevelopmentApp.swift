//
//  DevelopmentApp.swift
//  Development
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import FIASamplePackage

@main
struct DevelopmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .development)
        }
    }
}
