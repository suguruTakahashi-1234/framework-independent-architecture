//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import DomainLayer

public class MockDIContainer: DIContainerDependency {
    public let buildScheme: BuildScheme
    public let licenseDriver: DomainLayer.LicenseDriverProtocol
    public let logDriver: DomainLayer.LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .development, licenseDriver: DomainLayer.LicenseDriverProtocol = MockLicenseDriver(getLicenses: .samples), logDriver: DomainLayer.LogDriverProtocol = MockLogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
