//
//  HandelShadow.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit


extension UIView {
     func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
    }
}

extension CALayer {
    func applyCornerRadiusShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0,
        cornerRadiusValue: CGFloat = 0)
    {
        cornerRadius = cornerRadiusValue
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

