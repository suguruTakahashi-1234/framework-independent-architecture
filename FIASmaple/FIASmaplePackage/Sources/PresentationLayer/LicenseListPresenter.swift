//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer
import Observation

@Observable
final class LicenseListPresenter<DIContainer: LicenseListPresenterDependency> {
    private(set) var licenses: [License] = []
    var selectedLicense: License?
    
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
