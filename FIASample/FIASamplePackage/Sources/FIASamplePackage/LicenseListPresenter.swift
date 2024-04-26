//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Combine
import LicenseList

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [LicenseList.Library] = []
    @Published var seletedLicense: LicenseList.Library?

    private let licenseDriver: LicenseDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }

    func onAppear() {
        licenses = licenseDriver.getLicenses()
    }

    func onTapLicense(_ license: LicenseList.Library) {
        seletedLicense = license
    }
}
