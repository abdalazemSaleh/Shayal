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
            newPasswordView.backgroundColor = UIColor(named: constant.textFeildView)
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: constant.textFeildView)
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == newPasswordTF){
            newPasswordView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else {
            passwordConfirmationView.backgroundColor = UIColor(named: constant.textFeildColor)
        }
    }
}
