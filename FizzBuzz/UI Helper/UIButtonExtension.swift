//
//  UIButtonExtension.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 30.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation
import UIKit

/*
 *
 * Extension for UIButton styling
 *
 */

extension UIButton {
    func setWhiteTitle() {
        self.setTitleColor(.white, for: .normal)
    }
    
    func setBlueBackground() {
        self.layer.backgroundColor = Theme.fBBlue.cgColor
    }
    
    func makeCornerRadius() {
        self.layer.cornerRadius = 8
    }
}
