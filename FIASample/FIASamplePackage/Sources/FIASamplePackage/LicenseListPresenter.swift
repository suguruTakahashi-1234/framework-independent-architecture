//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Combine

final class LicenseListPresenter: ObservableObject {
    @Published var selectedLicense: License?
    @Published private(set) var licenses: [License] = []
    
    private let licenseDriver: LicenseDriverProtocol
    
    init(licenseDriver: LicenseDriverProtocol) {
        self.licenseDriver = licenseDriver
    }
    
    func onAppear() {
        licenses = licenseDriver.getLicenses()
    }
    
    func onTapLicense(_ license: License) {
        selectedLicense = license
    }
}
