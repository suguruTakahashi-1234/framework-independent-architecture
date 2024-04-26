//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import LicenseList

struct LicenseListView: View {
    @StateObject private var presenter = LicenseListPresenter()
    
    init() {}
    
    var body: some View {
        VStack {
            if presenter.licenses.isEmpty {
                Text("No Licenses")
            } else {
                List {
                    ForEach(presenter.licenses) { license in
                        Button {
                            presenter.onTapLicense(license)
                        } label: {
                            Text(license.name)
                        }
                    }
                }
            }
        }
        .navigationTitle("Licenses")
        .sheet(item: $presenter.seletedLicense) { license in
            NavigationStack {
                ScrollView {
                    Text(license.licenseBody)
                        .padding()
                }
                .navigationTitle(license.name)
            }
        }
        .onAppear {
            presenter.onAppear()
        }
    }
}

#Preview {
    NavigationStack {
        LicenseListView()
    }
}

