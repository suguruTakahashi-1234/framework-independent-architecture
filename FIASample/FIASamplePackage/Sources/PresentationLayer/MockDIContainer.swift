//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import DomainLayer

public class MockDIContainer: DIContainerDependency {
    public let buildScheme: BuildScheme
    public let licenseDriver: any DomainLayer.LicenseDriverProtocol
    public let logDriver: any DomainLayer.LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .development, licenseDriver: any DomainLayer.LicenseDriverProtocol = MockLicenseDriver(getLicenses: .samples), logDriver: any DomainLayer.LogDriverProtocol = MockLogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
