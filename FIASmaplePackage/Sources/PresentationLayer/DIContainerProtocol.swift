//
//  DIContainerProtocol.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import DomainLayer

public protocol DIContainerProtocol: LicenseListPresenterDependency, LicenseDetailPresenterDependency {
    var buildScheme: BuildScheme { get }
}
