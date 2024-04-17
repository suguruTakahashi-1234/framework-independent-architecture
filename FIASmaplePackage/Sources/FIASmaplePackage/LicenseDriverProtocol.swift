//
//  LicenseDriverProtocol.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

protocol LicenseDriverProtocol {
    func getLicense() -> [Library]
}
