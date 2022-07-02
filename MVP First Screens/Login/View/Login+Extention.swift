//
//  Login+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

extension Login: UITextFieldDelegate {
    // MARK: -  Handel Text Field
    // Text Field Delegate
    func textFieldDelegate() {
        phoneNumber.delegate = self
        password.delegate = self
    }
    // Handel Text Lable
    func handelTextFieldLable() {
        phoneNumberLabel.isHidden = true
        passwordLabel.isHidden = true
    }
    // Phone Number View
    func phoneNumberStyle() {
        phoneNumber.layer.cornerRadius = 4
        phoneNumberView.layer.cornerRadius = 4
        phoneNumber.attributedPlaceholder = NSAttributedString(string: "PhoneNumber", attributes: constant.attributes)
    }
    // PasswordStyle
    func passwordStyle() {
        password.layer.cornerRadius = 4
        passwordView.layer.cornerRadius = 4
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: constant.attributes)
    }
    // Text Filed Spacer
    func textFieldSpacer() {
        phoneNumber.handelTextFieldSpacer()
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

