//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import LicenseList

protocol LicenseDriverProtocol {
    func getLicenses() -> [LicenseList.Library]
}
