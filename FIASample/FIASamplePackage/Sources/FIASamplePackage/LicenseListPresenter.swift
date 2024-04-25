//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Combine
import LicenseList

final class LicenseListPresenter: ObservableObject {
    @Published var selectedLicense: LicenseList.Library?
    @Published private(set) var licenses: [LicenseList.Library] = []
    
    private let licenseDriver: LicenseDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }
    
    func onAppear() {
        licenses = licenseDriver.getLicenses()
    }
    
    func onTapLicense(_ license: LicenseList.Library) {
        selectedLicense = license
    }
}
