//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import LicenseList

struct LicenseListView: View {
    @State var seletedLicense: LicenseList.Library?
    
    init() {}
    
    var body: some View {
        List {
            ForEach(LicenseList.Library.libraries) { license in
                Button {
                    seletedLicense = license
                } label: {
                    Text(license.name)
                }
            }
        }
        .navigationTitle("Licenses")
        .sheet(item: $seletedLicense) { license in
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

