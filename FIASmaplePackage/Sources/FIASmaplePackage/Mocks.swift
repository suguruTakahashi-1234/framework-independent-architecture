//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

struct MockLicenseDriver: LicenseDriverProtocol {
    private let _getLicense: [LicenseList.Library]
    
    init(getLicense: [LicenseList.Library]) {
        self._getLicense = getLicense
    }
    
    func getLicense() -> [LicenseList.Library] {
        _getLicense
    }
}
