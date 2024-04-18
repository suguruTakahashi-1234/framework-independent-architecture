//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Combine
import Foundation
import DomainLayer

final class LicenseListPresenter<DIContainer: LicenseListPresenterDependency>: ObservableObject {
    @Published private(set) var licenses: [License] = []
    @Published var selectedLicense: License?
    
    private let diContainer: DIContainer
    
    init(diContainer: DIContainer) {
        self.diContainer = diContainer
    }

    func onAppear() {
        diContainer.logDriver.log("Show Screen LicenseList")
        licenses = diContainer.licenseDriver.getLicense()
    }

    func onTapLicense(_ license: License) {
        diContainer.logDriver.log("onTapLicense \(license.name)")
        selectedLicense = license
    }
}
