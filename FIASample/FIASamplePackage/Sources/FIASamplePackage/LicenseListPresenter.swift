//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Combine

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [License] = []
    @Published var seletedLicense: License?

    private let licenseDriver: LicenseDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }

    func onAppear() {
        licenses = licenseDriver.getLicenses()
    }

    func onTapLicense(_ license: License) {
        seletedLicense = license
    }
}
