//
//  Brain.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

/*
 *
 * Brain is the logic behind the fizzBuzz game.
 *
 * It checks if a number if fizz, buzz, fizzbuzz or nothing.
 *
 */

class Brain {

    // POST: returns bool indicating if number is divisible by three
    public func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    // POST: returns bool indicating if number is divisible by five
    public func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    // Post: retuns bool indicating if number is divisible by three and five
    public func isDivisibleByThreeAndFive(_ number: Int) -> Bool {
        return isDivisibleByThree(number) && isDivisibleByFive(number)
    }
    
    // Post: returns bool indicating if number is divisible by divisor without rest
    public func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    // Post: returns FizzBuzz Type for inputed number
    public func check(_ number: Int) -> FBType {
        guard number > 0 else {
            return FBType.number
        }
        if isDivisibleByThreeAndFive(number) {
            return FBType.fizzBuzz
        } else if isDivisibleByThree(number) {
            return FBType.fizz
        } else if isDivisibleByFive(number) {
            return FBType.buzz
        } else {
            return FBType.number
        }
    }
    
}
