//
//  LicenseDriver.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation
import FirebaseCrashlytics // Depends on heavy third-party libraries as an example
//import LicenseList

class LicenseDriver: LicenseDriverProtocol {
    func getLicense() -> [License] {
//        Library.libraries.map { library in
//            License(from: library)
//        }

        LicensesPlugin.licenses.map { library in
            License(from: library)
        }
    }
}

extension License {
//    init(from library: LicenseList.Library) {
//        self.init(id: library.id.uuidString, name: library.name, body: library.licenseBody)
//    }

    init(from licensesPluginLicense: LicensesPlugin.License) {
        self.init(id: licensesPluginLicense.id, name: licensesPluginLicense.name, body: licensesPluginLicense.licenseText ?? "")
    }
}
