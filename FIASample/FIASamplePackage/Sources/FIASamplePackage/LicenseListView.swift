//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import LicenseList

public struct LicenseListView: View {
    @State private var selectedLicense: LicenseList.Library?
    
    public init() {}
    
    public var body: some View {
        List {
            ForEach(LicenseList.Library.libraries) { license in
                Button{
                    selectedLicense = license
                } label: {
                    Text(license.name)
                }
            }
        }
        .navigationTitle("Licenses")
        .sheet(item: $selectedLicense) { license in
            NavigationStack {
                ScrollView {
                    Text(license.licenseBody)
                        .padding()
                }
                .navigationTitle(license.name)
            }
        }
    }
}

#Preview {
    NavigationStack {
        LicenseListView()
    }
}
