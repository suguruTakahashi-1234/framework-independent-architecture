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
    var presenter: LicenseListPresenter!
    
    override func setUp() {
        super.setUp()
        presenter = LicenseListPresenter()
        license = .init(name: UUID().uuidString, url: UUID().uuidString, licenseBody: UUID().uuidString)
    }
    
    func testOnAppear() {
        XCTAssertEqual(presenter.licenses.isEmpty, true)
        presenter.onAppear()
        XCTAssertEqual(presenter.licenses.isEmpty, false)
    }
    
    func testTapLicense() {
        XCTAssertEqual(presenter.seletedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.seletedLicense, license)
    }
}
