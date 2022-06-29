//
//  EnterNewPassword+Protocol.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import Foundation
import UIKit

extension EnterNewPassword: UITextFieldDelegate {
    
    // MARK: - Handel Text Field
    // Text Field Delegate
    func textFieldDelegate() {
        newPasswordTF.delegate = self
        confirmationPasswordTF.delegate = self
    }
    
    // MARK: - Text Field Extention
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == newPasswordTF){
            newPasswordView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == newPasswordTF){
            newPasswordView.backgroundColor = UIColor(named: constant.set_orginalColerToView)
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: constant.set_orginalColerToView)
        }
    }
}
