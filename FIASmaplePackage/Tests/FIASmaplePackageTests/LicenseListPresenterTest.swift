import XCTest
@testable import PresentationLayer
import DomainLayer
import FrameworkLayer

final class LicenseListPresenterTest: XCTestCase {
    var licenseDriver: (any LicenseDriverProtocol)!
    var presenter: LicenseListPresenter!
    var license: License!

    override func setUp() {
        super.setUp()
        licenseDriver = LicenseDriver()
        presenter = LicenseListPresenter(diContainer: MockDIContainer(licenseDriver: licenseDriver))
        license = License(id: UUID().uuidString, name: UUID().uuidString, body: UUID().uuidString)
    }

    func testOnApperActualDriver() {
        XCTAssertEqual(presenter.licenses, [])
        presenter.onAppear()
        XCTAssertNotEqual(presenter.licenses, [])
    }

    func testOnApperMockDriver() {
        let licenseDriver = MockLicenseDriver()
        presenter = LicenseListPresenter(diContainer: MockDIContainer(licenseDriver: licenseDriver))

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
