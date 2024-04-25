//
//  ProductionApp.swift
//  Production
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import FrameworkLayer
import PresentationLayer
import DependencyInjectionLayer

@main
struct ProductionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(dependency: DIContainer())
        }
    }
}
