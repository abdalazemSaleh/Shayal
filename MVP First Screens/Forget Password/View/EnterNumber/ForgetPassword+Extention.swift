//
//  ForgetPassword+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

// MARK: - Text Field Extention
extension ForgetPassword: UITextFieldDelegate {
    // MARK: - Handel Text Field
    func handleTF() {
        // handel phone number label
        phoneNumberLabel.isHidden = true
        // handel text filed
        phoneNumberTF.delegate = self
        textFieldView.layer.cornerRadius = 4
        phoneNumberTF.layer.cornerRadius = 4
        phoneNumberTF.attributedPlaceholder = NSAttributedString(string: "Phone Number", attributes: constant.attributes)
        phoneNumberTF.handelTFSpace()
    }
    // MARK: - Handel Text Field Extention
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: constant.textFeildView)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: constant.textFeildColor)
    }
}
// MARK: - Protocol Extention
extension ForgetPassword: handelVerification {
    func dismis() {
        let VC = EnterCode()
        navigationController?.pushViewController(VC, animated: true)
    }
}
