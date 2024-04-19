//
//  DIContainer.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import PresentationLayer
import DomainLayer
import FrameworkLayer

public final class DIContainer<LicenseDriver: LicenseDriverProtocol, LogDriver: LogDriverProtocol>: DIContainerDependency {
    public let buildScheme: BuildScheme = .production
    public let licenseDriver: LicenseDriver
    public let logDriver: LogDriver

    public init(
        licenseDriver: LicenseDriver = FrameworkLayer.LicenseDriver(),
        logDriver: LogDriver = FrameworkLayer.LogDriver()
    ) {
        self.licenseDriver = licenseDriver
        self.logDriver = logDriver
    }
}
