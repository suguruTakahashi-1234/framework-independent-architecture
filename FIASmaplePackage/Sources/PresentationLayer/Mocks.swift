//
//  Mocks.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import DomainLayer
import Foundation

public final class MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicense: [License]
    
    public init(getLicense: [License] = []) {
        self._getLicense = getLicense
    }
    
    public var getLicenseCallCount = 0
    public func getLicense() -> [License] {
        getLicenseCallCount += getLicenseCallCount + 1
        return _getLicense
    }
}
