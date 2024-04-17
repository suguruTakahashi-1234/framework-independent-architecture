//
//  SwiftUIView.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import LicenseList

struct LicenseDetailView: View {
    private let license: Library
    
    init(license: Library) {
        self.license = license
    }
    
    var body: some View {
        ScrollView {
            Text(license.licenseBody)
                .padding()
        }
        .navigationTitle(license.name)
    }
}

#Preview {
    NavigationStack {
        LicenseDetailView(license: Library(name: "License Name", url: "url", licenseBody: "License Body"))
    }
}
