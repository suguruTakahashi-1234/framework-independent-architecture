//
//  DevelopmentUITests.swift
//  DevelopmentUITests
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import XCTest

final class DevelopmentUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["Development"].staticTexts["Development"].tap()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Licenses"]/*[[".cells",".buttons[\"Licenses\"].staticTexts[\"Licenses\"]",".staticTexts[\"Licenses\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["LicenseList"]/*[[".cells.buttons[\"LicenseList\"]",".buttons[\"LicenseList\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
