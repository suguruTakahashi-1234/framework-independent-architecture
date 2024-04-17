//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import LicenseList

struct LicenseListView: View {
    @StateObject private var presenter: LicenseListPresenter

    init(licenseDriver: LicenseDriverProtocol = LicenseDriver()) {
        _presenter = StateObject(wrappedValue: LicenseListPresenter(licenseDriver: licenseDriver))
    }

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

#Preview("Simple") {
    let licenseDriver = MockLicenseDriver(getLicense: [
        Library(name: "Test Data 1 Title", url: UUID().uuidString, licenseBody: "Test Data 1 Body"),
        Library(name: "Test Data 2 Title", url: UUID().uuidString, licenseBody: "Test Data 2 Body"),
        Library(name: "Test Data 3 Title", url: UUID().uuidString, licenseBody: "Test Data 3 Body"),
    ])
    
    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver)
    }
}

#Preview("Large") {
    let licenseDriver = MockLicenseDriver(
        getLicense: (0..<100).map { _ in
            Library(name: UUID().uuidString, url: UUID().uuidString, licenseBody: UUID().uuidString)
        }
    )
    
    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver)
    }
}

#Preview("Empty") {
    let licenseDriver = MockLicenseDriver(getLicense: [])
    
    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver)
    }
}
