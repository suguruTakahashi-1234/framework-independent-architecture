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
    public let licenseDriver = LicenseDriver()
    public let logDriver = LogDriver()
    
    public init() {}
}

