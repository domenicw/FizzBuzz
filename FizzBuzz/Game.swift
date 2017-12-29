//
//  Game.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

class Game {
    
    public private(set) var count: Int
    
    private let brain: Brain
    
    init() {
        self.count = 0
        self.brain = Brain()
    }
    
    // POST: returns bool indicating if type corresponds to current count
    //       if false count is reset (to zero 0)
    public func play(with type: FBType) -> Bool {
        self.incrementCount()
        if brain.check(self.count) == type {
            return true
        } else {
            self.resetCount()
            return false
        }
    }
    
    private func incrementCount() {
        self.count += 1
    }
    
    public func resetCount() {
        self.count = 0
    }
}
