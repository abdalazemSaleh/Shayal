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
    func hidePhoneNumberLable() {
        // handel phone number label
        phoneNumberLabel.isHidden = true
        // handel text filed
    }
    
    func textFeildDelegate() {
        phoneNumberTF.delegate = self
    }
    
    func HandeltextFieldView() {
        textFieldView.layer.cornerRadius = 4
    }
    
    func textFeildStyle() {
        phoneNumberTF.layer.cornerRadius = 4
        phoneNumberTF.attributedPlaceholder = NSAttributedString(string: "Phone Number", attributes: constant.attributes)
    }
    
    func textFeildHandelSpacer() {
        phoneNumberTF.handelTextFieldSpacer()

    }
    // MARK: - Handel Text Field Extention
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: constant.set_orginalColerToView)
    }
}
// MARK: - Protocol Extention
extension ForgetPassword: handelVerification {

    func dismis() {
        goToEnterCodeVC()
    }
    
    func goToEnterCodeVC() {
        let VC = EnterCode()
        navigationController?.pushViewController(VC, animated: true)
    }
}
