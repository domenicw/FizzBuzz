//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import UIKit

/*
 *
 * Main View for the Game
 *
 */

class ViewController: UIViewController {

    // UI variables
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    // The game
    let game: Game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateScores()
        self.setUpView()
    }
    
    // Set up for all the button when creating the view
    func setUpView() {
        let buttons = [self.buzzButton, self.fizzButton, self.fizzBuzzButton, self.numberButton]
        for button in buttons {
            button?.setBlueBackground()
            button?.setWhiteTitle()
            button?.makeCornerRadius()
        }
        
        self.resetButton.setTitleColor(Theme.fBBlue, for: .normal)
        self.fizzBuzzLabel.textColor = Theme.fBBlue
        self.highScoreLabel.textColor = Theme.fBBlue
    }
    
    // Reset Button action
    @IBAction func resetButtonTapped(_ sender: Any) {
        self.game.reset(with: true)
        self.updateScores()
    }
    
    // Number Button action
    @IBAction func numberButtonTapped(_ sender: Any) {
        self.play(with: .number)
    }
    
    // Fizz Button action
    @IBAction func fizzButtonTapped(_ sender: Any) {
        self.play(with: .fizz)
    }
    
    // Buzz Button action
    @IBAction func buzzButtonTapped(_ sender: Any) {
        self.play(with: .buzz)
    }
    
    // FizzBuzz Button action
    @IBAction func fizzBuzzButtonTapped(_ sender: Any) {
        self.play(with: .fizzBuzz)
    }
    
    // Play once with type and update score on view
    func play(with type: FBType) {
        let _ = self.game.play(with: type)
        self.updateScores()
    }
    
    // Update game scores
    func updateScores() {
        let count: String = String(self.game.count)
        self.fizzBuzzLabel.text = count
        
        let highScore: String = String(self.game.history.highScore)
        self.highScoreLabel.text = "High Score: \(highScore)"
    }
}

