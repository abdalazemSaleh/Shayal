//
//  EnterNewPassword+Protocol.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import Foundation
import UIKit

extension EnterNewPassword: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == newPasswordTF){
            newPasswordView.backgroundColor = UIColor(named: "First")
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: "First")
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == newPasswordTF){
            newPasswordView.backgroundColor = UIColor(named: "TF")
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: "TF")
        }
    }
}
