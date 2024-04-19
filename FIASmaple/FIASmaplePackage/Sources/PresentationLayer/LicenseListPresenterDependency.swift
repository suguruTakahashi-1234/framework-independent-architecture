//
//  LicenseListPresenterDependency.swift
//
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import DomainLayer

public protocol LicenseListPresenterDependency {
    associatedtype LicenseDriverProtocolAssocType: LicenseDriverProtocol
    associatedtype LogDriverProtocolAssocType: LogDriverProtocol

    var licenseDriver: LicenseDriverProtocolAssocType { get }
    var logDriver: LogDriverProtocolAssocType { get }
}
