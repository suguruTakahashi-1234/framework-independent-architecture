//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Combine
import Foundation
import DomainLayer

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [License] = []
    @Published var selectedLicense: License?
    
    private let licenseDriver: LicenseDriverProtocol
    private let logDriver: LogDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol, logDriver: LogDriverProtocol) {
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
    
    func onAppear() {
        licenses = licenseDriver.getLicense()
    }
    
    func onTapLicense(_ license: License) {
        logDriver.log("onTapLicense \(license.name)")
        selectedLicense = license
    }
}
