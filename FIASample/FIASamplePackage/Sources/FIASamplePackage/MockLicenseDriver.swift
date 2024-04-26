//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [License]
    var getLicensesCounter: Int = 0
    
    init(getLicenses: [License]) {
        self._getLicenses = getLicenses
    }

    func getLicenses() -> [License] {
        getLicensesCounter = getLicensesCounter + 1
        return _getLicenses
    }
}
