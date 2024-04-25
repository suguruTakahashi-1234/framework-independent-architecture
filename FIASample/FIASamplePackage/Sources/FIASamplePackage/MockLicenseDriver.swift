//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation

class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [License]
    
    init(getLicenses: [License]) {
        self._getLicenses = getLicenses
    }
    
    func getLicenses() -> [License] {
        _getLicenses
    }
}
