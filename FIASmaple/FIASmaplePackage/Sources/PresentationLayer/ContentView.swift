//
//  ContentView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

public struct ContentView<DIContainer: DIContainerDependency>: View {
    private let diContainer: DIContainer

    public init(diContainer: DIContainer) {
        self.diContainer = diContainer
    }
    
    public var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    LicenseListView(diContainer: diContainer)
                } label: {
                    Text("Licenses")
                }
            }
            .navigationTitle(diContainer.buildScheme.name)
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
    ContentView(diContainer: MockDIContainer(buildScheme: .development))
}

#Preview("Production") {
    ContentView(diContainer: MockDIContainer(buildScheme: .production))
}
