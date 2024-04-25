//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer

public protocol LicenseListPresenterDependency {
    var licenseDriver: LicenseDriverProtocol { get }
    var logDriver: LogDriverProtocol { get }
}
