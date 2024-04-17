//
//  Mocks.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicense: [License]
    
    init(getLicense: [License] = []) {
        self._getLicense = getLicense
    }
    
    var getLicenseCallCount = 0
    func getLicense() -> [License] {
        getLicenseCallCount += getLicenseCallCount + 1
        return _getLicense
    }
}
