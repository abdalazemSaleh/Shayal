//
//  HandelButton.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

extension UIButton {
     func HandelButtonGradient(){
        let first = UIColor(named: "First")
        let secound = UIColor(named: "Secound")
        let gradientLayer = CAGradientLayer()
         gradientLayer.frame = self.bounds
        gradientLayer.colors = [secound!.cgColor, first!.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.locations = [0.0, 1.0]
         self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
