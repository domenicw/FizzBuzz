//
//  InterfaceController.swift
//  FBWatch Extension
//
//  Created by Domenic Wüthrich on 31.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var scoreLabel: WKInterfaceLabel!
    @IBOutlet var numberButton: WKInterfaceButton!
    @IBOutlet var fizzButton: WKInterfaceButton!
    @IBOutlet var buzzButton: WKInterfaceButton!
    @IBOutlet var fizzBuzzButton: WKInterfaceButton!
    
    var delegate: GameDelegate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.delegate = GameDelegate.shared
        self.setUpView()
        self.updateScore()
    }
    
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
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func numberButtonTapped() {
        self.play(with: .number)
    }
    
    @IBAction func fizzButtonTapped() {
        self.play(with: .fizz)
    }
    
    @IBAction func buzzButtonTapped() {
        self.play(with: .buzz)
    }
    
    @IBAction func fizzBuzzButtonTapped() {
        self.play(with: .fizzBuzz)
    }
    
    func play(with type: FBType) {
        let _ = self.delegate.game.play(with: type)
        self.updateScore()
    }
    
    func updateScore() {
        let score = self.delegate.game.count
        self.scoreLabel.setText(String(score))
    }
    
    @IBAction func resetGameButtonTapped() {
        self.delegate.game.reset(with: true)
        self.updateScore()
    }
}
