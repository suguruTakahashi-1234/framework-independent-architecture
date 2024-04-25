//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import LicenseList

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [LicenseList.Library]
    
    init(getLicenses: [LicenseList.Library]) {
        self._getLicenses = getLicenses
    }
    
    func getLicenses() -> [LicenseList.Library] {
        _getLicenses
    }
}
