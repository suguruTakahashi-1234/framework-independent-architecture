//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicense: [LicenseList.Library]
    
    init(getLicense: [LicenseList.Library] = []) {
        self._getLicense = getLicense
    }
    
    var getLicenseCallCount = 0
    func getLicense() -> [LicenseList.Library] {
        getLicenseCallCount += getLicenseCallCount + 1
        return _getLicense
    }
}
