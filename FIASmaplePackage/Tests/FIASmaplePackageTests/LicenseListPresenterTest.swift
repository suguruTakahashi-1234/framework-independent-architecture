import XCTest
@testable import FIASmaplePackage
import LicenseList

final class LicenseListPresenterTest: XCTestCase {
    var presenter: LicenseListPresenter!
    var license: Library!

    override func setUp() {
        super.setUp()
        presenter = LicenseListPresenter()
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
