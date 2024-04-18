import XCTest
import DependencyInjectionLayer
@testable import PresentationLayer
import DomainLayer
import FrameworkLayer

final class LicenseListPresenterTest: XCTestCase {
    var license: License!

    override func setUp() {
        super.setUp()
        license = License(id: UUID().uuidString, name: UUID().uuidString, body: UUID().uuidString)
    }

    func testOnApperActualDriver() {
        let diContainer = DIContainer()
        let presenter = LicenseListPresenter(diContainer: diContainer)
        
        XCTAssertEqual(presenter.licenses, [])
        presenter.onAppear()
        XCTAssertNotEqual(presenter.licenses, [])
    }

    func testOnApperMockDriver() {
        let diContainer = MockDIContainer()
        let presenter = LicenseListPresenter(diContainer: diContainer)

        XCTAssertEqual(diContainer.licenseDriver.getLicenseCallCount, 0)
        presenter.onAppear()
        XCTAssertEqual(diContainer.licenseDriver.getLicenseCallCount, 1)
    }

    func testOnTapLicense() {
        let diContainer = MockDIContainer()
        let presenter = LicenseListPresenter(diContainer: diContainer)
        
        XCTAssertEqual(presenter.selectedLicense, nil)
        presenter.onTapLicense(license)
        XCTAssertEqual(presenter.selectedLicense?.id, license.id)
    }
}
