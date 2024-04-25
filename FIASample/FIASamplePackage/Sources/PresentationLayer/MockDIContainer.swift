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
    public let licenseDriver: any LicenseDriverProtocol
    public let logDriver: any LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .development, licenseDriver: any LicenseDriverProtocol = MockLicenseDriver(getLicenses: .samples), logDriver: any LogDriverProtocol = MockLogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
