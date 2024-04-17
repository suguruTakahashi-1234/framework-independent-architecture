//
//  DevelopmentApp.swift
//  Development
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import PresentationLayer
import DomainLayer

@main
struct DevelopmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(buildScheme: .development, licenseDriver: MockLicenseDriver(getLicense: [
                License(id: UUID().uuidString, name: "Test Data 1 Title", body: "Test Data 1 Body"),
                License(id: UUID().uuidString, name: "Test Data 2 Title", body: "Test Data 2 Body"),
                License(id: UUID().uuidString, name: "Test Data 3 Title", body: "Test Data 3 Body"),
            ]))
        }
    }
}

