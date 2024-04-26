//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI

struct LicenseListView: View {
    @StateObject private var presenter: LicenseListPresenter

    init(licenseDriver: LicenseDriverProtocol = LicenseDriver()) {
        _presenter = .init(wrappedValue: .init(licenseDriver: licenseDriver))
    }

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
                    Text(license.body)
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

#Preview("Actual") {
    NavigationStack {
        LicenseListView(licenseDriver: LicenseDriver())
    }
}

#Preview("Empty") {
    NavigationStack {
        LicenseListView(licenseDriver: MockLicenseDriver(getLicenses: []))
    }
}

#Preview("Samples") {
    NavigationStack {
        LicenseListView(licenseDriver: MockLicenseDriver(getLicenses: [
        ]))
    }
}
