//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import DomainLayer

public struct ContentView<Dependency: DIContainerDependency>: View {
    private let dependency: Dependency
    
    public init(dependency: Dependency) {
        self.dependency = dependency
    }

    public var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    LicenseListView(dependency: dependency)
                } label: {
                    Text("Licenses")
                }
            }
            .navigationTitle(dependency.buildScheme.rawValue)
        }
    }
}

#Preview("Development") {
    ContentView(dependency: MockDIContainer(buildScheme: .development))
}

#Preview("Production") {
    ContentView(dependency: MockDIContainer(buildScheme: .production))
}
