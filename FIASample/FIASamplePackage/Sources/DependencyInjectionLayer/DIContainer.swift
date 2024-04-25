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
    public let licenseDriver: LicenseDriverProtocol
    public let logDriver: LogDriverProtocol
    
    public init(buildScheme: BuildScheme = .production, licenseDriver: LicenseDriverProtocol = FrameworkLayer.LicenseDriver(), logDriver: LogDriverProtocol = FrameworkLayer.LogDriver()) {
        self.buildScheme = buildScheme
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
