//
//  import PresentationLayer.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import PresentationLayer
import DomainLayer
import FrameworkLayer

public final class DIContainer: DIContainerProtocol {
    public let buildScheme: BuildScheme = .production
    public let licenseDriver: any LicenseDriverProtocol = LicenseDriver()
    public let logDriver: any LogDriverProtocol = LogDriver()

    public init() {}
}
