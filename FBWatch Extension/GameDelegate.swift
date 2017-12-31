//
//  GameDelegate.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

/*
 *
 * Game singleton for watch app
 *
 * (Needed because of page navigation)
 *
 */

class GameDelegate {
    
    // Singleton instance
    static let shared = GameDelegate()
    
    // Game instance
    let game: Game
    
    init() {
        self.game = Game()
    }
}
