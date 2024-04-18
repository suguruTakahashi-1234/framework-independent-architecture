//
//  MockDIContainer.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public final class MockDIContainer: DIContainerProtocol {
    public let buildScheme: BuildScheme
    public let licenseDriver: LicenseDriverProtocol
    public let logDriver: LogDriverProtocol
    
    public init(
        buildScheme: BuildScheme = .development,
        licenseDriver: LicenseDriverProtocol = MockLicenseDriver(getLicense: .samples),
        logDriver: LogDriverProtocol = MockLogDriver()
    ) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
