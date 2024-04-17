//
//  LicenseDriver.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import LicenseList

class LicenseDriver: LicenseDriverProtocol {
    func getLicense() -> [License] {
        Library.libraries.map { library in
            License(from: library)
        }
    }
}

extension License {
    init(from library: Library) {
        self.init(id: library.id.uuidString, name: library.name, body: library.licenseBody)
    }
}
