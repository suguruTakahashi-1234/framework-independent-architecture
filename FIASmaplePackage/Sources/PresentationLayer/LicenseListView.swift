//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

struct LicenseListView: View {
    @StateObject private var presenter: LicenseListPresenter

    init(licenseDriver: LicenseDriverProtocol, logDriver: LogDriverProtocol) {
        _presenter = StateObject(wrappedValue: LicenseListPresenter(
            licenseDriver: licenseDriver,
            logDriver: logDriver
        ))
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
        LicenseListView(licenseDriver: MockLicenseDriver(), logDriver: MockLogDriver())
    }
}

#Preview("Simple") {
    let licenseDriver = MockLicenseDriver(getLicense: .samples)

    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver, logDriver: MockLogDriver())
    }
}

#Preview("Large") {
    let licenseDriver = MockLicenseDriver(
        getLicense: (0..<100).map { _ in
            License(id: UUID().uuidString, name: UUID().uuidString, body: UUID().uuidString)
        }
    )

    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver, logDriver: MockLogDriver())
    }
}

#Preview("Empty") {
    let licenseDriver = MockLicenseDriver(getLicense: [])

    return NavigationStack {
        LicenseListView(licenseDriver: licenseDriver, logDriver: MockLogDriver())
    }
}
