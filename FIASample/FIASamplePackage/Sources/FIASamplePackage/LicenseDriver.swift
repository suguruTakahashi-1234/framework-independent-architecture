//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import Firebase

public class LicenseDriver: LicenseDriverProtocol {
    public init() {}
    
    public func getLicenses() -> [License] {
        LicensesPlugin.licenses.map { license in
            License(from: license)
        }
    }
}

extension License {
    init(from license: LicensesPlugin.License) {
        self.init(id: license.id, name: license.name, body: license.licenseText ?? "")
    }
}
