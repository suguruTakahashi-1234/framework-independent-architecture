//
//  LicenseDriverTest.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import XCTest
@testable import FIASmaplePackage
import LicenseList

class LicenseDriverTest: XCTestCase {
    var licenseDriver: LicenseDriver!
    
    override func setUp() {
        super.setUp()
        licenseDriver = LicenseDriver()
    }

    func testGetLicense() {
        XCTAssertEqual(licenseDriver.getLicense().first?.name, "LicenseList")
    }
}
