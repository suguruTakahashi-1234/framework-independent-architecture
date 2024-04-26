//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import DomainLayer

public class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicenses: [License]
    public var getLicensesCounter: Int = 0
    
    public init(getLicenses: [License]) {
        self._getLicenses = getLicenses
    }

    public func getLicenses() -> [License] {
        getLicensesCounter = getLicensesCounter + 1
        return _getLicenses
    }
}
