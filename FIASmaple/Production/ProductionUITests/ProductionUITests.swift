//
//  ProductionUITests.swift
//  ProductionUITests
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import XCTest

final class ProductionUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLicense() throws {
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["Production"].staticTexts["Production"].tap()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.staticTexts["Licenses"].tap()
        collectionViewsQuery.buttons["abseil"].tap()
    }
}
