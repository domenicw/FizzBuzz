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

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    let game: Game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateScores()
        self.setUpButtons()
    }
    
    func setUpButtons() {
        self.numberButton.setBlueBackground()
        self.fizzButton.setBlueBackground()
        self.buzzButton.setBlueBackground()
        self.fizzBuzzButton.setBlueBackground()
        self.resetButton.setTitleColor(Theme.fBBlue, for: .normal)
        
        self.numberButton.setWhiteTitle()
        self.fizzButton.setWhiteTitle()
        self.buzzButton.setWhiteTitle()
        self.fizzBuzzButton.setWhiteTitle()
        
        self.numberButton.makeCornerRadius()
        self.fizzButton.makeCornerRadius()
        self.buzzButton.makeCornerRadius()
        self.fizzBuzzButton.makeCornerRadius()
        
        self.fizzBuzzLabel.textColor = Theme.fBBlue
        self.highScoreLabel.textColor = Theme.fBBlue
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        self.game.reset(with: true)
        self.updateScores()
    }
    
    @IBAction func numberButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .number)
        self.updateScores()
    }
    
    @IBAction func fizzButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .fizz)
        self.updateScores()
    }
    
    @IBAction func buzzButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .buzz)
        self.updateScores()
    }
    
    @IBAction func fizzBuuuButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .fizzBuzz)
        self.updateScores()
    }
    
    func updateScores() {
        let count: String = String(self.game.count)
        self.fizzBuzzLabel.text = count
        
        let highScore: String = String(self.game.history.highScore)
        self.highScoreLabel.text = "High Score: \(highScore)"
    }
}

