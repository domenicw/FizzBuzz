//
//  UIButtonExtension.swift
//  FizzBuzz
//
//  Created by Domenic Wüthrich on 30.12.17.
//  Copyright © 2017 Domenic Wüthrich. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func setWhiteTitle() {
        self.setTitleColor(.white, for: .normal)
    }
    
    func setBlueBackground() {
        let blue = UIColor.init(red: 30/255, green: 144/255, blue: 1, alpha: 1)
        self.layer.backgroundColor = blue.cgColor
    }
    
    func makeCornerRadius() {
        self.layer.cornerRadius = 5
    }
}
