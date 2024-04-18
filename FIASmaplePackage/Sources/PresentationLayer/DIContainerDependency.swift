//
//  DIContainerProtocol.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public protocol DIContainerDependency: LicenseListPresenterDependency, LicenseDetailPresenterDependency {
    var buildScheme: BuildScheme { get }
}
