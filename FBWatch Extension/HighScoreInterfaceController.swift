//
//  HighScoreInterfaceController.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import WatchKit
import Foundation

/**
 High Score and Game reset View.
 
*/
class HighScoreInterfaceController: WKInterfaceController {

    // View variables
    @IBOutlet var highScoreLabel: WKInterfaceLabel!
    @IBOutlet var resetButton: WKInterfaceButton!
    
    /// Game singleton
    var delegate: GameDelegate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.delegate = GameDelegate.shared
    }

    override func willActivate() {
        self.showHighScore()
        super.willActivate()
    }
    
    /// Shows high score on view
    func showHighScore() {
        let highScoreOpt = self.delegate.game.history.highScore
        guard let highScore = highScoreOpt else { return }
        self.highScoreLabel.setText("High Score: \(String(describing: highScore))")
    }

    /// Resets the game and updates high score on view
    @IBAction func resetButtonTapped() {
        self.delegate.game.reset(with: true)
        self.showHighScore()
    }
}
