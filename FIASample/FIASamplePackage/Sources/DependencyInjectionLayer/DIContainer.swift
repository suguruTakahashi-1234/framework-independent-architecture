//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import DomainLayer
import FrameworkLayer
import PresentationLayer

public class DIContainer: DIContainerDependency {
    public let buildScheme: BuildScheme = .production
    public let licenseDriver: DomainLayer.LicenseDriverProtocol = LicenseDriver()
    public let logDriver: DomainLayer.LogDriverProtocol = LogDriver()
    
    public init() {}
}

