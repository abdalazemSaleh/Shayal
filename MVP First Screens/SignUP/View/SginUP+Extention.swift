//
//  SginUP+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit



extension SginUP: UITextFieldDelegate {
    
    // MARK: - Handel Text Field
    func handelTF() {
        // handel delegation
        nameTF.delegate = self
        phoneTF.delegate = self
        countryTF.delegate = self
        cityTF.delegate = self
        passwordTF.delegate = self
        passwordConfirmationTF.delegate = self
        // handel view & TF corner radius
        nameTF.handeltextFieldView(view: nameView, string: "Name")
        phoneTF.handeltextFieldView(view: phoneView, string: "Phone Number")
        countryTF.handeltextFieldView(view: countryView, string: "Country")
        cityTF.handeltextFieldView(view: cityView, string: "City")
        passwordTF.handeltextFieldView(view: passwordView, string: "Password")
        passwordConfirmationTF.handeltextFieldView(view: passwordConfrirmationView, string: "Password Confiramtion")
    }
    // MARK: - Handel Text Field Extention
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: constant.textFeildView)
        } else if (textField == phoneTF) {
            phoneView.backgroundColor = UIColor(named: constant.textFeildView)
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: constant.textFeildView)
        } else if ( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: constant.textFeildView)
        } else if ( textField == passwordTF) {
            passwordView.backgroundColor = UIColor(named: constant.textFeildView)
        } else {
            passwordConfrirmationView.backgroundColor = UIColor(named: constant.textFeildView)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else if (textField == phoneTF) {
            phoneView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else if ( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else if ( textField == passwordTF) {
            passwordView.backgroundColor = UIColor(named: constant.textFeildColor)
        } else {
            passwordConfrirmationView.backgroundColor = UIColor(named: constant.textFeildColor)
        }
    }
}
