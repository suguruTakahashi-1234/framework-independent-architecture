//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer

public class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [License]
    
    public init(getLicenses: [License]) {
        self._getLicenses = getLicenses
    }
    
    public func getLicenses() -> [License] {
        _getLicenses
    }
}
