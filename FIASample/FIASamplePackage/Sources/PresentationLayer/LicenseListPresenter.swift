//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Combine
import DomainLayer

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [License] = []
    @Published var seletedLicense: License?

    private let dependency: any LicenseListPresenterDependency
    
    init(dependency: any LicenseListPresenterDependency) {
        self.dependency = dependency
    }

    func onAppear() {
        dependency.logDriver.log("onAppear LicenseListView")
        licenses = dependency.licenseDriver.getLicenses()
    }

    func onTapLicense(_ license: License) {
        dependency.logDriver.log("onTapLicense \(license.name)")
        seletedLicense = license
    }
}
