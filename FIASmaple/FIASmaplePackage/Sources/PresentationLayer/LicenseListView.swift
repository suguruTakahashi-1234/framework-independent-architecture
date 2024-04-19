//
//  LicenseListView.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

struct LicenseListView<DIContainer: DIContainerDependency>: View {
    private let diContainer: DIContainer
    @StateObject private var presenter: LicenseListPresenter<DIContainer>

    public init(diContainer: DIContainer) {
        self.diContainer = diContainer
        _presenter = StateObject(wrappedValue: LicenseListPresenter(diContainer: diContainer))
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
        .sheet(item: $presenter.selectedLicense, content: { license in
            NavigationStack {
                LicenseDetailView(diContainer: diContainer, license: license)
            }
        })
        .onAppear {
            presenter.onAppear()
        }
    }
}

#Preview {
    NavigationStack {
        LicenseListView(diContainer: MockDIContainer())
    }
}

#Preview("Simple") {
    let licenseDriver = MockLicenseDriver(getLicense: .samples)

    return NavigationStack {
        LicenseListView(diContainer: MockDIContainer(licenseDriver: licenseDriver))
    }
}

#Preview("Large") {
    let licenseDriver = MockLicenseDriver(
        getLicense: (0..<100).map { _ in
            License(id: UUID().uuidString, name: UUID().uuidString, body: UUID().uuidString)
        }
    )

    return NavigationStack {
        LicenseListView(diContainer: MockDIContainer(licenseDriver: licenseDriver))
    }
}

#Preview("Empty") {
    let licenseDriver = MockLicenseDriver(getLicense: [])

    return NavigationStack {
        LicenseListView(diContainer: MockDIContainer(licenseDriver: licenseDriver))
    }
}
