//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI

public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

