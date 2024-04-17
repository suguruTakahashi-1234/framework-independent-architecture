//
//  ContentView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI

public struct ContentView: View {
    private let buildScheme: BuildScheme
    
    public init(buildScheme: BuildScheme) {
        self.buildScheme = buildScheme
    }

    public var body: some View {
        List {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Build Scheme: \(buildScheme)")
        }
    }
}

#Preview {
    ContentView(buildScheme: .development)
}