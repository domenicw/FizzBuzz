//
//  InterfaceController.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import WatchKit
import Foundation

/*
 *
 * Main View for Game
 *
 */

class InterfaceController: WKInterfaceController {

    // View variables
    @IBOutlet var scoreLabel: WKInterfaceLabel!
    @IBOutlet var numberButton: WKInterfaceButton!
    @IBOutlet var fizzButton: WKInterfaceButton!
    @IBOutlet var buzzButton: WKInterfaceButton!
    @IBOutlet var fizzBuzzButton: WKInterfaceButton!
    
    // Game singleton
    var delegate: GameDelegate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.delegate = GameDelegate.shared
        self.setUpView()
        self.updateScore()
    }
    
    // Sets up all buttons
    func setUpView() {
        let buttons = [numberButton, fizzButton, buzzButton, fizzBuzzButton]
        for button in buttons {
            button?.setBackgroundColor(Theme.fBBlue)
        }
    }
    
    override func willActivate() {
        self.updateScore()
        super.willActivate()
    }

    // Number button action
    @IBAction func numberButtonTapped() {
        self.play(with: .number)
    }
    
    // Fizz button action
    @IBAction func fizzButtonTapped() {
        self.play(with: .fizz)
    }
    
    // Buzz button action
    @IBAction func buzzButtonTapped() {
        self.play(with: .buzz)
    }
    
    // FizzBuzz button action
    @IBAction func fizzBuzzButtonTapped() {
        self.play(with: .fizzBuzz)
    }
    
    // Play once with type and update score on view
    func play(with type: FBType) {
        let _ = self.delegate.game.play(with: type)
        self.updateScore()
    }
    
    // Updates score on view
    func updateScore() {
        let score = self.delegate.game.count
        self.scoreLabel.setText(String(score))
    }
    
    // Reset button action, resets game
    @IBAction func resetGameButtonTapped() {
        self.delegate.game.reset(with: true)
        self.updateScore()
    }
}
