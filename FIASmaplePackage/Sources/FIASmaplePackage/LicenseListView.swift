//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI

struct LicenseListView: View {
    @StateObject private var presenter = LicenseListPresenter()

    var body: some View {
        VStack {
            if presenter.licenses.isEmpty {
                Text("No Licenses")
                    .padding()
                Spacer()
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
        .sheet(item: $presenter.selectedLicense) { license in
            NavigationStack {
                LicenseDetailView(license: license)
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
