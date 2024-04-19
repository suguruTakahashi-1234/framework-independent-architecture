//
//  LicenseDetailPresenterDependency.swift
//
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import DomainLayer

public protocol LicenseDetailPresenterDependency {
    associatedtype LogDriverProtocolAssocType: LogDriverProtocol

    var logDriver: LogDriverProtocolAssocType { get }
}
