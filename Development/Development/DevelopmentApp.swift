//
//  DevelopmentApp.swift
//  Development
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import PresentationLayer

@main
struct DevelopmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .development)
        }
    }
}
