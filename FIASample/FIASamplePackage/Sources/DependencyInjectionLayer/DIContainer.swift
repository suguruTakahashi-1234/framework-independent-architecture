//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer
import PresentationLayer
import FrameworkLayer

public class DIContainer: DIContainerDependency {
    public let buildScheme: BuildScheme
    public let licenseDriver: any LicenseDriverProtocol
    public let logDriver: any LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .production, licenseDriver: any LicenseDriverProtocol = FrameworkLayer.LicenseDriver(), logDriver: any LogDriverProtocol = FrameworkLayer.LogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
