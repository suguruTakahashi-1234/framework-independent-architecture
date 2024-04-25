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
    public let licenseDriver: FrameworkLayer.LicenseDriver
    public let logDriver: FrameworkLayer.LogDriver
    
    public init(buildScheme: BuildScheme = .production) {
        self.buildScheme = buildScheme
        self.licenseDriver = .init()
        self.logDriver = .init()
    }
}
