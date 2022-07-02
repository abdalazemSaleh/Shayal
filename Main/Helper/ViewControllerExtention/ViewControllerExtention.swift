//
//  ViewControllerExtention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-06-29.
//

import UIKit

extension UIViewController {
    
    func fullScreenNavigation() {
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
    }
}
