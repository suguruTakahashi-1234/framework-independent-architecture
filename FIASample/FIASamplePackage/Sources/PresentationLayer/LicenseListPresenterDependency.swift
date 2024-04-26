//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import DomainLayer

public protocol LicenseListPresenterDependency {
    var licenseDriver: any LicenseDriverProtocol { get }
    var logDriver: any LogDriverProtocol { get }
}
