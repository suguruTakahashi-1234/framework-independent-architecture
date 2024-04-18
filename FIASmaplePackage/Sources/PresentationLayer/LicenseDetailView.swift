//
//  LicenseDetailView.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import SwiftUI
import DomainLayer

struct LicenseDetailView<DIContainer: DIContainerDependency>: View {
    @StateObject private var presenter: LicenseDetailPresenter<DIContainer>
    private let license: License
    
    public init(diContainer: DIContainer, license: License) {
        self.license = license
        _presenter = StateObject(wrappedValue: LicenseDetailPresenter(diContainer: diContainer))
    }

    var body: some View {
        ScrollView {
            Text(license.body)
                .padding()
        }
        .navigationTitle(license.name)
        .onAppear {
            presenter.onAppear()
        }
    }
}

#Preview {
    NavigationStack {
        LicenseDetailView(diContainer: MockDIContainer(), license: .sample)
    }
}
