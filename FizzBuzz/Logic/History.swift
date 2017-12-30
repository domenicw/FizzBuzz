//
//  History.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 30.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

/*
 *
 *  History keeps track of the current highScore
 *
 */

class History {
    
    // Current highScore
    public private(set) var highScore: Int!
    
    init() {
        self.highScore = 0
    }
    
    init(_ highScore: Int) {
        self.highScore = highScore
    }
    
    // POST: if score is new highScore, highScore is altered and true is returned
    public func new(_ score: Int) -> Bool {
        if score > self.highScore {
            self.highScore = score
            return true
        }
        return false
    }
    
    // POST: Resets current high score to zero (0)
    public func reset() {
        self.highScore = 0
    }
    
}
