//
//  FizzBuzzUITest.swift
//  FizzBuzzTests
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import XCTest

class FizzBuzzUITest: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        self.app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumber() {
        let count = app.buttons["count"]
        count.tap()
        let score = count.label
        XCTAssertEqual(score, "1")
    }
    
    func tapToFourteen() {
        let number = app.buttons["count"]
        let fizz = app.buttons["fizz"]
        let buzz = app.buttons["buzz"]
        
        number.tap()
        number.tap()
        fizz.tap()
        number.tap()
        buzz.tap()
        fizz.tap()
        number.tap()
        number.tap()
        fizz.tap()
        buzz.tap()
        number.tap()
        fizz.tap()
        number.tap()
        number.tap()
    }
    
    func testFirstFizzBuzz() {
        self.tapToFourteen()
        let fizzbuzz = app.buttons["fizzBuzz"]
        fizzbuzz.tap()
        
        let score = app.buttons["count"].label
        XCTAssertEqual(score, "15")
    }
    
}
