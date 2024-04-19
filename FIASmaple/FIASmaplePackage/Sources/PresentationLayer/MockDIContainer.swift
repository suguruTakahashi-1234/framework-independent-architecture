//
//  MockDIContainer.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public final class MockDIContainer<LicenseDriver: LicenseDriverProtocol, LogDriver: LogDriverProtocol>: DIContainerDependency {
    public let buildScheme: BuildScheme
    public let licenseDriver: LicenseDriver
    public let logDriver: LogDriver
    
    public init(
        buildScheme: BuildScheme = .development,
        licenseDriver: LicenseDriver = MockLicenseDriver(getLicense: .samples),
        logDriver: LogDriver = MockLogDriver()
    ) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
