//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import XCTest
@testable import FrameworkLayer

final class LicenseDriverTest: XCTestCase {
    var licenseDriver: LicenseDriver!

    override func setUp() {
        super.setUp()
        licenseDriver = LicenseDriver()
    }

    func testGetLicenses() {
        XCTAssertEqual(licenseDriver.getLicenses().first!.name, "abseil")
    }
}
