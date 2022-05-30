//
//  LoginVC+PresenterDelegate.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//

import Foundation
import UIKit

extension Login: LoginView {
    // MARK: - Show Error
    func showError(message: String) {
        if phoneNumber.text?.isEmpty == true{
            phoneNumberLabel.isHidden = false
            phoneNumberLabel.text = message
            phoneNumber.backgroundColor = UIColor(named: constant.wrongPsColor)
        }
        if password.text?.isEmpty == true{
            passwordLabel.isHidden = false
            passwordLabel.text = message
            password.backgroundColor = UIColor(named: constant.wrongPsColor)
        }
        
    }
}

