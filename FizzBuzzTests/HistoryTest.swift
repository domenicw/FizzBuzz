//
//  HistoryTest.swift
//  FizzBuzzTests
//
//  Created by Domenic Wüthrich on 30.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class HistoryTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitializing() {
        let history = History()
        XCTAssertEqual(history.highScore, 0)
        let history1 = History(5)
        XCTAssertEqual(history1.highScore, 5)
    }
    
    func testNewHighScore() {
        let history = History()
        let first = history.new(6)
        XCTAssert(first)
        let second = history.new(4)
        XCTAssert(!second)
        let third = history.new(12)
        XCTAssert(third)
        XCTAssertEqual(history.highScore, 12)
    }
    
    func testReset() {
        let history = History()
        let _ = history.new(6)
        history.reset()
        XCTAssertEqual(history.highScore, 0)
    }
}
