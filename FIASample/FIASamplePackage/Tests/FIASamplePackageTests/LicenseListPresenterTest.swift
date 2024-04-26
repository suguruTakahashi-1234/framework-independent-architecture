//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import XCTest
@testable import FIASamplePackage
import LicenseList

final class LicenseListPresenterTest: XCTestCase {
    var license: LicenseList.Library!
    var licenseDriver: MockLicenseDriver!
    var presenter: LicenseListPresenter!

    override func setUp() {
        super.setUp()
        license = .init(name: UUID().uuidString, url: UUID().uuidString, licenseBody: UUID().uuidString)
        licenseDriver = MockLicenseDriver(getLicenses: [])
        presenter = LicenseListPresenter(licenseDriver: licenseDriver)
    }

    func testOnAppear() {
        XCTAssertEqual(licenseDriver.getLicensesCounter, 0)
        presenter.onAppear()
        XCTAssertEqual(licenseDriver.getLicensesCounter, 1)
    }

    func testTapLicense() {
        XCTAssertEqual(presenter.seletedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.seletedLicense, license)
    }
}
