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

    private let licenseDriver: LicenseDriverProtocol
    private let logDriver: LogDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol, logDriver: LogDriverProtocol) {
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }

    func onAppear() {
        logDriver.log("onAppear LicenseListView")
        licenses = licenseDriver.getLicenses()
    }

    func onTapLicense(_ license: License) {
        logDriver.log("onTapLicense \(license.name)")
        seletedLicense = license
    }
}
