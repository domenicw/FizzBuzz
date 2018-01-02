//
//  Brain.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

/**
 Brain is the logic behind the fizzBuzz game. It checks if a number is fizz, buzz, fizzBuzz or nothing.
 
 */
class Brain {

    /**
     Checks if number is divisible by three
     
     - Parameter number: Integer to check if divisible by three
     
     - Returns: Bool indicating if number is divisible by three
     
     */
    public func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    /**
     Checks if number is divisible by five
     
     - Parameter number: Integer to check if divisible by five
     
     - Returns: Bool indicating if number is divisible by five
     
     */
    public func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    /**
     Checks if number is divisible by three and five
     
     - Parameter number: Integer to check if divisible by three and five
     
     - Returns: Bool indicating if number is divisible by three and five
     
     */
    public func isDivisibleByThreeAndFive(_ number: Int) -> Bool {
        return isDivisibleByThree(number) && isDivisibleByFive(number)
    }
    
    /**
     Checks if number is divisible by divisor
     
     - Parameter divisor: Integer to divide number by
     
     - Parameter number: Integer to check if divisible by divisor
     
     - Returns: Bool indicating if number is divisible by divisor
     
     */
    public func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    /**
     Checks parameter `number` for associated fizzBuzz type
     
     - Parameter number: Integer to ckeck
     
     - Returns: FizzBuzz type for parameter number
     
     */
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
