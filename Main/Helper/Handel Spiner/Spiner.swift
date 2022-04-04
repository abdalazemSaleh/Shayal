//
//  Helper.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

let ai = UIActivityIndicatorView(style: .large)

class Spiner {
    // MARK: - Show Spiner
    static func showSpiner(view: UIView) {
        ai.center = view.center
        view.addSubview(ai)
        ai.startAnimating()
    }
    // MARK: - Remove Spiner
     static func removeSpiner() {
         ai.stopAnimating()
    }
}
