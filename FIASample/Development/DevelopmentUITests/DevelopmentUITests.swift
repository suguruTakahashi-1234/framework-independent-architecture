//
//  DevelopmentUITests.swift
//  DevelopmentUITests
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import XCTest

final class DevelopmentUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLicenseListView() throws {
        let app = XCUIApplication()
        app.launch()

        app.navigationBars["Development"].staticTexts["Development"].tap()

        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Licenses"]/*[[".cells.buttons[\"Licenses\"]",".buttons[\"Licenses\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["abseil"]/*[[".cells.buttons[\"abseil\"]",".buttons[\"abseil\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
