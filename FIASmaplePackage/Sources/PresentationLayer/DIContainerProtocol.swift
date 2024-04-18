//
//  DIContainerProtocol.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public protocol DIContainerProtocol {
    associatedtype LicenseDriverProtocolAssocType: LicenseDriverProtocol
    associatedtype LogDriverProtocolAssocType: LogDriverProtocol

    var buildScheme: BuildScheme { get }
    
    var licenseDriver: LicenseDriverProtocolAssocType { get }
    var logDriver: LogDriverProtocolAssocType { get }
}
