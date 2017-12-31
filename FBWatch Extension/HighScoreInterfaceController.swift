//
//  HighScoreInterfaceController.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import WatchKit
import Foundation


class HighScoreInterfaceController: WKInterfaceController {

    @IBOutlet var highScoreLabel: WKInterfaceLabel!
    @IBOutlet var resetButton: WKInterfaceButton!
    
    var delegate: GameDelegate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.delegate = GameDelegate.shared
    }

    override func willActivate() {
        self.showHighScore()
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func showHighScore() {
        let highScoreOpt = self.delegate.game.history.highScore
        guard let highScore = highScoreOpt else { return }
        self.highScoreLabel.setText("High Score: \(String(describing: highScore))")
    }

    @IBAction func resetButtonTapped() {
        self.delegate.game.reset(with: true)
        self.showHighScore()
    }
}
