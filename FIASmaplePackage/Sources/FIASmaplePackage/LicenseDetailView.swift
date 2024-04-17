//
//  SwiftUIView.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI

struct LicenseDetailView: View {
    private let license: License
    
    init(license: License) {
        self.license = license
    }
    
    var body: some View {
        ScrollView {
            Text(license.body)
                .padding()
        }
        .navigationTitle(license.name)
    }
}

#Preview {
    NavigationStack {
        LicenseDetailView(license: License(id: UUID().uuidString, name: "test name", body: "test body"))
    }
}
