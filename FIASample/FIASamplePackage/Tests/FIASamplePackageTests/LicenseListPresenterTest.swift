//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import XCTest
@testable import FIASamplePackage
import LicenseList

final class LicenseListPresenterTest: XCTestCase {
    var license: LicenseList.Library!
    var presenter: LicenseListPresenter!
    
    override func setUp() {
        super.setUp()
        license = LicenseList.Library.libraries.first!
        presenter = LicenseListPresenter(licenseDriver: LicenseDriver())
    }
    
    func testOnAppear() {
        XCTAssertEqual(presenter.licenses.isEmpty, true)
        presenter.onAppear()
        XCTAssertEqual(presenter.licenses.isEmpty, false)
    }
    
    func testOnTapLicense() {
        XCTAssertEqual(presenter.selectedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.selectedLicense, license)
    }
}
