//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import LicenseList

class LicenseDriver: LicenseDriverProtocol {
    func getLicenses() -> [LicenseList.Library] {
        LicenseList.Library.libraries
    }
}
