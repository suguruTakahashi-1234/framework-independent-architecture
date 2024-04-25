//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import LicenseList

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
        .sheet(item: $presenter.selectedLicense) { license in
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

#Preview("Actual") {
    NavigationStack {
        LicenseListView(licenseDriver: LicenseDriver())
    }
}

#Preview("Samples") {
    let licenseDriver = MockLicenseDriver(getLicenses: [
        .init(name: "sample license 1", url: "sample license 1", licenseBody: "sample license body 1"),
        .init(name: "sample license 2", url: "sample license 2", licenseBody: "sample license body 2"),
        .init(name: "sample license 3", url: "sample license 3", licenseBody: "sample license body 3"),
    ])
    
    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver)
    }
}

#Preview("Empty") {
    let licenseDriver = MockLicenseDriver(getLicenses: [])
    
    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver)
    }
}
