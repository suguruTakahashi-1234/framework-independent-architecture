//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Combine
import LicenseList
import Foundation

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [Library] = []
    @Published var selectedLicense: Library?
    
    private let licenseDriver: LicenseDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }
    
    func onAppear() {
        licenses = licenseDriver.getLicense()
    }
    
    func onTapLicense(_ license: Library) {
        selectedLicense = license
    }
}
