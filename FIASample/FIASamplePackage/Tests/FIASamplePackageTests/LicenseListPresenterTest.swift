//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import XCTest
@testable import PresentationLayer
import DomainLayer
import FrameworkLayer
import DependencyInjectionLayer

final class LicenseListPresenterTest: XCTestCase {
    var license: License!
    var presenter: LicenseListPresenter!
    
    override func setUp() {
        super.setUp()
        license = LicenseDriver().getLicenses().first!
        presenter = LicenseListPresenter(dependency: DIContainer())
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
