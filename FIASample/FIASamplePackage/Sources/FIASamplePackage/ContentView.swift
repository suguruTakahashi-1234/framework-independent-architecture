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
    
    public init(buildScheme: BuildScheme) {
        self.buildScheme = buildScheme
    }

    public var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    LicenseListView()
                } label: {
                    Text("Licenses")
                }
            }
            .navigationTitle(buildScheme.rawValue)
        }
    }
}

#Preview("Development") {
    ContentView(buildScheme: .development)
}

#Preview("Production") {
    ContentView(buildScheme: .production)
}
