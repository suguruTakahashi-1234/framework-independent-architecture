//
//  ContentView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

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
            .navigationTitle(buildScheme.name)
        }
    }
}

extension BuildScheme {
    var name: String {
        switch self {
        case .development:
            "Development"
        case .production:
            "Production"
        }
    }
}

#Preview("Development") {
    ContentView(buildScheme: .development)
}

#Preview("Production") {
    ContentView(buildScheme: .production)
}
