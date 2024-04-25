//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer

public protocol LicenseListPresenterDependency {
    associatedtype LicenseDriverProtocolAssocType: LicenseDriverProtocol
    associatedtype LogDriverProtocolAssocType: LogDriverProtocol

    var licenseDriver: LicenseDriverProtocolAssocType { get }
    var logDriver: LogDriverProtocolAssocType { get }
}
