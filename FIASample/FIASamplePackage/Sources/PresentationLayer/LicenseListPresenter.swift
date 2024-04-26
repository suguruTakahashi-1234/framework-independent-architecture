//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import DomainLayer
import Observation

@Observable
final class LicenseListPresenter<Dependency: LicenseListPresenterDependency> {
    private(set) var licenses: [License] = []
    var selectedLicense: License?

    private let dependency: Dependency
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }

    func onAppear() {
        dependency.logDriver.log("onAppear LicenseListView")
        licenses = dependency.licenseDriver.getLicenses()
    }

    func onTapLicense(_ license: License) {
        dependency.logDriver.log("onTapLicense \(license.name)")
        selectedLicense = license
    }
}
