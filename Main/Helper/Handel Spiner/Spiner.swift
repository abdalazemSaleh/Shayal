//
//  Helper.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

let ai = UIActivityIndicatorView(style: .large)

class Spiner {
    // MARK: - Remove Spiner
     static func removeSpiner() {
         ai.stopAnimating()
    }
}

extension UIView {
    func showSpiner() {
        ai.center = self.center
        self.addSubview(ai)
        ai.startAnimating()
    }
}
