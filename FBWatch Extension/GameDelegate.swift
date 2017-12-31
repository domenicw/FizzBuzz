//
//  GameDelegate.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation

class GameDelegate {
    static let shared = GameDelegate()
    
    let game: Game
    
    init() {
        self.game = Game()
    }
}
