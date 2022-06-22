//
//  Login+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

extension Login: UITextFieldDelegate {
    // MARK: -  handel text field
    func handelTF() {
        // handel text field delegation
        phoneNumber.delegate = self
        password.delegate = self
        // handel text field label
        phoneNumberLabel.isHidden = true
        passwordLabel.isHidden = true
        // handel text field view
        phoneNumber.layer.cornerRadius = 4
        phoneNumberView.layer.cornerRadius = 4
        phoneNumber.attributedPlaceholder = NSAttributedString(string: "PhoneNumber", attributes: constant.attributes)
        phoneNumber.handelTextFieldSpacer()
        
        password.layer.cornerRadius = 4
        passwordView.layer.cornerRadius = 4
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: constant.attributes)
        password.handelTextFieldSpacer()
    }
    // MARK: - handel text  field extention
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == phoneNumber) {
            phoneNumberView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if (textField == password) {
            passwordView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == phoneNumber) {
            phoneNumberView.backgroundColor = UIColor(named: constant.set_orginalColerToView)
        } else if (textField == password) {
            passwordView.backgroundColor = UIColor(named: constant.set_orginalColerToView)
        }
    }
}
