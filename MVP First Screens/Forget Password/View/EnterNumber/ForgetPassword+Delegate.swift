//
//  ForgetPassword+Delegate.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//

import Foundation
import UIKit

extension ForgetPassword: ForgetPasswordVeiw {
    func showError(message: String) {
        if phoneNumberTF.text?.isEmpty == true {
            phoneNumberLabel.isHidden = false
            phoneNumberLabel.text = message
        }
    }
}
