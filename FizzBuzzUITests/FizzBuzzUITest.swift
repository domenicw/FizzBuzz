//
//  FizzBuzzUITest.swift
//  FizzBuzzTests
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import XCTest

/*
 *
 * Tests the UI of the FizzBuzz Game
 *
 */

class FizzBuzzUITest: XCTestCase {
    
    var app: XCUIApplication!
    var number: XCUIElement!
    var fizz: XCUIElement!
    var buzz: XCUIElement!
    var fizzbuzz: XCUIElement!
    var score: XCUIElement!
    var highScore: XCUIElement!
    var reset: XCUIElement!
    
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        self.app = XCUIApplication()
        self.app.launch()
        self.number = app.buttons["count"]
        self.fizz = app.buttons["fizz"]
        self.buzz = app.buttons["buzz"]
        self.fizzbuzz = app.buttons["fizzBuzz"]
        self.score = app.staticTexts["score"]
        self.highScore = app.staticTexts["highScore"]
        self.reset = app.buttons["reset"]
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNumber() {
        self.number.tap()
        XCTAssertEqual(score.label, "1")
    }
    
    func tapToFourteen() {
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
        fizzbuzz.tap()
        XCTAssertEqual(score.label, "15")
    }
    
    func testHistory() {
        self.tapToFourteen()
        self.number.tap()
        XCTAssertEqual(highScore.label, "High Score: 14")
    }
    
    func testReset() {
        self.tapToFourteen()
        self.reset.tap()
        XCTAssertEqual(score.label, "0")
        XCTAssertEqual(highScore.label, "High Score: 0")
    }
    
}
