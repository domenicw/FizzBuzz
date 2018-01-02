//
//  UIButtonExtension.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 30.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation
import UIKit

/**
 Extension for UIButton styling
 
 */
extension UIButton {
    
    /// Sets button title color to white
    func setWhiteTitle() {
        self.setTitleColor(.white, for: .normal)
    }
    
    /// Sets button background color to theme blue
    func setBlueBackground() {
        self.layer.backgroundColor = Theme.fBBlue.cgColor
    }
    
    /// Makes corner radius (8 pt) for button
    func makeCornerRadius() {
        self.layer.cornerRadius = 8
    }
}
