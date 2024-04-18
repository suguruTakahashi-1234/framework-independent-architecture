//
//  MockDIContainer.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public final class MockDIContainer<LogDriver: LogDriverProtocol>: DIContainerProtocol {
    public let buildScheme: BuildScheme
    public let licenseDriver: any LicenseDriverProtocol
    public let logDriver: LogDriver
    
    public init(
        buildScheme: BuildScheme = .development,
        licenseDriver: any LicenseDriverProtocol = MockLicenseDriver(getLicense: .samples),
        logDriver: LogDriver = MockLogDriver()
    ) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
