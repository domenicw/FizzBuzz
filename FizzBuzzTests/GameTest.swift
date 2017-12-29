//
//  GameTest.swift
//  FizzBuzzTests
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTest: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStartCountIsZero() {
        XCTAssertEqual(game.count, 0)
    }
    
    func testPlayOnce() {
        let res1 = game.play(with: FBType.number)
        XCTAssert(res1)
        let res2 = game.play(with: FBType.number)
        XCTAssert(res2)
        let res3 = game.play(with: FBType.fizz)
        XCTAssert(res3)
        let res4 = game.play(with: FBType.number)
        XCTAssert(res4)
    }
    
    func testResetCount() {
        let _ = game.play(with: FBType.number)
        XCTAssertEqual(game.count, 1)
        game.resetCount()
        XCTAssertEqual(game.count, 0)
    }
    
}
