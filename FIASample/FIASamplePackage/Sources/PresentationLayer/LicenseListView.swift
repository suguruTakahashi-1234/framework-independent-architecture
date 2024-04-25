//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import SwiftUI
import DomainLayer

struct LicenseListView<Dependency: DIContainerDependency>: View {
    @StateObject private var presenter: LicenseListPresenter<Dependency>

    init(dependency: Dependency) {
        _presenter = .init(wrappedValue: .init(dependency: dependency))
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
    let licenseDriver = MockLicenseDriver(getLicenses: [
        .init(id: "sample license 1", name: "sample license 1", body: "sample license body 1"),
        .init(id: "sample license 2", name: "sample license 2", body: "sample license body 2"),
        .init(id: "sample license 3", name: "sample license 3", body: "sample license body 3"),
    ])
    
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
