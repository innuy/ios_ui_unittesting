//
//  TestExamplesUITests.swift
//  TestExamplesUITests
//
//  Created by Ignacio Duran on 8/28/17.
//  Copyright © 2017 Ignacio Duran. All rights reserved.
//

import XCTest

class TestExamplesUITests: XCTestCase {
    
    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        app = XCUIApplication()

        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNavigateToSwipeScreen() {
        
        XCTAssertTrue(app.buttons["nextButton"].exists)
        XCTAssertFalse(app.staticTexts["firstScreenLabel"].exists)
        
        app.buttons["nextButton"].tap()
        
        XCTAssertTrue(app.staticTexts["firstScreenLabel"].exists)
    }
    
    func testNavigateToSecondSwipeScreen() {
        
        app.buttons["nextButton"].tap()
        
        app.swipeLeft()
        
        XCTAssertTrue(app.staticTexts["secondScreenLabel"].exists)
    }
}
