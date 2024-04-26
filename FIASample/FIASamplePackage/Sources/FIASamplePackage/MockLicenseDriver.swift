//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import LicenseList

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [LicenseList.Library]
    var getLicensesCounter: Int = 0
    
    init(getLicenses: [LicenseList.Library]) {
        self._getLicenses = getLicenses
    }

    func getLicenses() -> [LicenseList.Library] {
        getLicensesCounter = getLicensesCounter + 1
        return _getLicenses
    }
}
