//
//  LicenseDriverProtocol.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation

public protocol LicenseDriverProtocol {
    func getLicense() -> [License]
}
