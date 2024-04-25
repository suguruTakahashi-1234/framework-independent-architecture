//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Combine
import DomainLayer

final class LicenseListPresenter: ObservableObject {
    @Published var selectedLicense: License?
    @Published private(set) var licenses: [License] = []
    
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
        selectedLicense = license
    }
}
