//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 29.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    let game: Game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCountDisplay()
        self.setUpButtons()
    }
    
    func setUpButtons() {
        self.numberButton.setBlueBackground()
        self.fizzButton.setBlueBackground()
        self.buzzButton.setBlueBackground()
        self.fizzBuzzButton.setBlueBackground()
        
        self.numberButton.setWhiteTitle()
        self.fizzButton.setWhiteTitle()
        self.buzzButton.setWhiteTitle()
        self.fizzBuzzButton.setWhiteTitle()
        
        self.numberButton.makeCornerRadius()
        self.fizzButton.makeCornerRadius()
        self.buzzButton.makeCornerRadius()
        self.fizzBuzzButton.makeCornerRadius()
    }

    @IBAction func numberButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .number)
        self.updateCountDisplay()
    }
    
    @IBAction func fizzButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .fizz)
        self.updateCountDisplay()
    }
    
    @IBAction func buzzButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .buzz)
        self.updateCountDisplay()
    }
    
    @IBAction func fizzBuuuButtonTapped(_ sender: Any) {
        let _ = self.game.play(with: .fizzBuzz)
        self.updateCountDisplay()
    }
    
    func updateCountDisplay() {
        let count: String = String(self.game.count)
        self.numberButton.setTitle(count, for: .normal)
    }
}

