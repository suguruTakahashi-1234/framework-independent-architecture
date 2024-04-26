//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import XCTest
@testable import PresentationLayer
import DomainLayer

final class LicenseListPresenterTest: XCTestCase {
    var license: License!
    var licenseDriver: MockLicenseDriver!
    var presenter: LicenseListPresenter<MockDIContainer<MockLicenseDriver, MockLogDriver>>!

    override func setUp() {
        super.setUp()
        license = .init(id: UUID().uuidString, name: UUID().uuidString, body: UUID().uuidString)
        licenseDriver = MockLicenseDriver(getLicenses: [])
        presenter = LicenseListPresenter(dependency: MockDIContainer(licenseDriver: licenseDriver))
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
