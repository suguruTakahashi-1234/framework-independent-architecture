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

    func testOnApper() throws {
        XCTAssertEqual(presenter.licenses, [])
        presenter.onAppear()
        XCTAssertNotEqual(presenter.licenses, [])
    }

    func testOnTapLicense() throws {
        XCTAssertEqual(presenter.selectedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.selectedLicense?.id, license.id)
    }
}
