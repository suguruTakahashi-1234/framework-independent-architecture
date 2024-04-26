//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation
import LicenseList

protocol LicenseDriverProtocol {
    func getLicenses() -> [LicenseList.Library]
}
