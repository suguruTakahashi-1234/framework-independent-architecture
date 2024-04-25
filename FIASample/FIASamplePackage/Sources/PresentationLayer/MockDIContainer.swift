//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer

public class MockDIContainer: DIContainerDependency {
    public let buildScheme: BuildScheme
    public let licenseDriver: LicenseDriverProtocol
    public let logDriver: LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .development, licenseDriver: LicenseDriverProtocol = MockLicenseDriver(getLicenses: []), logDriver: LogDriverProtocol = MockLogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
