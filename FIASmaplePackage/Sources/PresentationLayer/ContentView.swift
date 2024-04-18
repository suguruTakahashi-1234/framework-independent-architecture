//
//  ContentView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

public struct ContentView: View {
    private let diContainer: DIContainerProtocol

    public init(diContainer: DIContainerProtocol) {
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
