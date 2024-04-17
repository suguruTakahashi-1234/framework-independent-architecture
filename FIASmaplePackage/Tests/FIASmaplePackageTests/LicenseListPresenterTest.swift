import XCTest
@testable import FIASmaplePackage
import LicenseList

final class LicenseListPresenterTest: XCTestCase {
    var licenseDriver: LicenseDriverProtocol!
    var presenter: LicenseListPresenter!
    var license: Library!

    override func setUp() {
        super.setUp()
        licenseDriver = LicenseDriver()
        presenter = LicenseListPresenter(licenseDriver: licenseDriver)
        license = Library(name: UUID().uuidString, url: UUID().uuidString, licenseBody: UUID().uuidString)
    }

    func testOnApperActualDriver() {
        XCTAssertEqual(presenter.licenses, [])
        presenter.onAppear()
        XCTAssertNotEqual(presenter.licenses, [])
    }

    func testOnApperMockDriver() {
        let licenseDriver = MockLicenseDriver()
        presenter = LicenseListPresenter(licenseDriver: licenseDriver)

        XCTAssertEqual(licenseDriver.getLicenseCallCount, 0)
        presenter.onAppear()
        XCTAssertEqual(licenseDriver.getLicenseCallCount, 1)
    }

    func testOnTapLicense() {
        XCTAssertEqual(presenter.selectedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.selectedLicense?.id, license.id)
    }
}
