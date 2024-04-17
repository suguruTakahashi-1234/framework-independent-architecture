//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

struct MockLicenseDriverEmpty: LicenseDriverProtocol {
    func getLicense() -> [LicenseList.Library] {
        []
    }
}

struct MockLicenseDriverLarge: LicenseDriverProtocol {
    func getLicense() -> [LicenseList.Library] {
        (0..<100).map { _ in
            Library(name: UUID().uuidString, url: UUID().uuidString, licenseBody: UUID().uuidString)
        }
    }
}
