//
//  LicenseDriver.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import DomainLayer
import Foundation
import FirebaseCrashlytics // Depends on heavy third-party libraries as an example

public class LicenseDriver: LicenseDriverProtocol {
    public init() {}
    
    public func getLicense() -> [License] {
        LicensesPlugin.licenses.map { library in
            License(from: library)
        }
    }
}

extension License {
    init(from licensesPluginLicense: LicensesPlugin.License) {
        self.init(id: licensesPluginLicense.id, name: licensesPluginLicense.name, body: licensesPluginLicense.licenseText ?? "")
    }
}
