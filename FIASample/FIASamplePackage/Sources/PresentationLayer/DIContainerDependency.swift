//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import DomainLayer

public protocol DIContainerDependency: LicenseListPresenterDependency {
    var buildScheme: BuildScheme { get }
}
