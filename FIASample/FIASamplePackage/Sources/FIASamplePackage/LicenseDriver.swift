//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import LicenseList

class LicenseDriver: LicenseDriverProtocol {
    func getLicenses() -> [License] {
        LicenseList.Library.libraries.map { library in
            License(from: library)
        }
    }
}

extension License {
    init(from library: LicenseList.Library) {
        self.init(id: library.id.uuidString, name: library.name, body: library.licenseBody)
    }
}
