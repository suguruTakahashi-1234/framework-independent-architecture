//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import LicenseList

struct LicenseListView: View {
    @State private var presenter = LicenseListPresenter()

    var body: some View {
        List {
            ForEach(Library.libraries) { license in
                Button {
                    presenter.onTapLicense(license)
                } label: {
                    Text(license.name)
                }
            }
        }
        .navigationTitle("Licenses")
        .sheet(item: $presenter.selectedLicense) { license in
            NavigationStack {
                LicenseDetailView(license: license)
            }
        }
    }
}

#Preview {
    NavigationStack {
        LicenseListView()
    }
}
