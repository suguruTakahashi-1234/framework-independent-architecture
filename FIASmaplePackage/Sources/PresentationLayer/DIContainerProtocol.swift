//
//  DIContainerProtocol.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public protocol DIContainerProtocol {
    associatedtype LogDriverProtocolAssocType: LogDriverProtocol

    var buildScheme: BuildScheme { get }
    var licenseDriver: any LicenseDriverProtocol { get }
    var logDriver: LogDriverProtocolAssocType { get }
}
