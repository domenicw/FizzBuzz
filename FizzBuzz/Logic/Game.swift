//
//  Game.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation


/*
 *
 * Game class
 *
 * Game keeps track of the current count and
 *
 */

class Game {
    
    // Current count (state of game)
    public private(set) var count: Int
    
    // The brain
    private let brain: Brain
    
    // The history
    public let history: History
    
    init() {
        self.count = 0
        self.brain = Brain()
        self.history = History()
    }
    
    // POST: returns bool indicating if type corresponds to current count
    //       if false count is reset (to zero (0))
    public func play(with type: FBType) -> Bool {
        self.incrementCount()
        if brain.check(self.count) == type {
            let _ = self.history.new(self.count)
            return true
        } else {
            self.reset(with: false)
            return false
        }
    }
    
    // POST: Increments current count by one (1)
    private func incrementCount() {
        self.count += 1
    }
    
    // POST: Resets current count to zero (0) and if history true, history will be reset as well to zero (0)
    public func reset(with history: Bool) {
        self.count = 0
        if history {
            self.history.reset()
        }
    }
}
