//
//  DIContainerProtocol.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public protocol DIContainerProtocol {
    var buildScheme: BuildScheme { get }
    var licenseDriver: LicenseDriverProtocol { get }
    var logDriver: LogDriverProtocol { get }
}
