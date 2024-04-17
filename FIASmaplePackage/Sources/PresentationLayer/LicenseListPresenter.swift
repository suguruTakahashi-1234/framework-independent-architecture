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
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }
    
    func onAppear() {
        licenses = licenseDriver.getLicense()
    }
    
    func onTapLicense(_ license: License) {
        selectedLicense = license
    }
}
