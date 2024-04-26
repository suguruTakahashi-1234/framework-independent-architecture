//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import SwiftUI
import DomainLayer

struct LicenseListView<Dependency: DIContainerDependency>: View {
    @State private var presenter: LicenseListPresenter<Dependency>

    public init(dependency: Dependency) {
        presenter = LicenseListPresenter(dependency: dependency)
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
        .sheet(item: $presenter.selectedLicense, content: { license in
            NavigationStack {
                ScrollView {
                    Text(license.body)
                        .padding()
                }
                .navigationTitle(license.name)
            }
        })
        .onAppear {
            presenter.onAppear()
        }
    }
}

#Preview("Samples") {
    let licenseDriver = MockLicenseDriver(getLicenses: .samples)

    return NavigationStack {
        LicenseListView(dependency: MockDIContainer(licenseDriver: licenseDriver))
    }
}

#Preview("Empty") {
    let licenseDriver = MockLicenseDriver(getLicenses: [])
    
    return NavigationStack {
        LicenseListView(dependency: MockDIContainer(licenseDriver: licenseDriver))
    }
}
