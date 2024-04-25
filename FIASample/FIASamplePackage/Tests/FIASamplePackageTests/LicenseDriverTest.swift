//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import XCTest
@testable import FIASamplePackage

final class LicenseDriverTest: XCTestCase {
    var licenseDriver: LicenseDriver!

    override func setUp() {
        super.setUp()
        licenseDriver = LicenseDriver()
    }

    func testGetLicenses() {
        XCTAssertEqual(licenseDriver.getLicenses().first?.name, "abseil")
    }
}
