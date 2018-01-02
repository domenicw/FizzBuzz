//
//  Game.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

/**
 Game class. Keeps track of the current game state.
 
 */
class Game {
    
    /// Current count (state of game)
    public private(set) var count: Int
    
    /// The brain
    private let brain: Brain
    
    /// The game history
    public let history: History
    
    init() {
        self.count = 0
        self.brain = Brain()
        self.history = History()
    }
    
    /**
     Plays once. Checks if parameter type is the correct FBType for current game state
     
     - Parameter type: FBType for current play
     
     - Returns: Bool indicating if parameter type is correct FBType for game state
     
     - Note: If parameter type is the wrong FBType for current game state, game will reset and game count will be zero (0) again.
     
     */
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
    
    /// Increments current count by one (1)
    private func incrementCount() {
        self.count += 1
    }
    
    /**
     Resets current game count to zero (0)
     
     - Parameter history: Bool indicating if history should be reset too
     
     */
    public func reset(with history: Bool) {
        self.count = 0
        if history {
            self.history.reset()
        }
    }
}
