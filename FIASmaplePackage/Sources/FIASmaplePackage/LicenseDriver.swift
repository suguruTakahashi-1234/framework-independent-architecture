//
//  LicenseDriver.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

struct LicenseDriver: LicenseDriverProtocol {
    func getLicense() -> [LicenseList.Library] {
        Library.libraries
    }
}
