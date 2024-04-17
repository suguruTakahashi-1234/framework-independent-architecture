//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import LicenseList

struct LicenseListView: View {
    var body: some View {
        List {
            ForEach(Library.libraries) { license in
                NavigationLink {
                    ScrollView {
                        Text(license.licenseBody)
                            .padding()
                    }
                    .navigationTitle(license.name)
                } label: {
                    Text(license.name)
                }
            }
        }
        .navigationTitle("Licenses")
    }
}

#Preview {
    NavigationStack {
        LicenseListView()
    }
}
