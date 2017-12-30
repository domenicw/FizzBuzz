//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import XCTest
@testable import FizzBuzz

/*
 *
 * Tests the Brain of the Game
 *
 */

class FizzBuzzTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssert(result)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssert(result)
    }
    
    func testIsDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(15)
        XCTAssert(result)
    }
    
    func testCheckFizz() {
        let numbers = [3, 6, 9, 12, 18, 21, 24, 27]
        for n in numbers {
            let result = brain.check(n)
            XCTAssertEqual(result, FBType.fizz)
        }
    }
    
    func testCheckBuzz() {
        let numbers = [5, 10, 20, 25]
        for n in numbers {
            let result = brain.check(n)
            XCTAssertEqual(result, FBType.buzz)
        }
    }
    
    func testCheckFizzBuzz() {
        let numbers = [15, 30]
        for n in numbers {
            let result = brain.check(n)
            XCTAssertEqual(result, FBType.fizzBuzz)
        }
    }
    
    func testCheckNumber() {
        let numbers = [0, 1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22, 23, 26, 28, 29]
        for n in numbers {
            let result = brain.check(n)
            XCTAssertEqual(result, FBType.number)
        }
    }
    
}
