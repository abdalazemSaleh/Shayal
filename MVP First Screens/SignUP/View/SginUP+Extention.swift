//
//  SginUP+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit



extension SginUP: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: "First")
        } else if (textField == phoneTF) {
            phoneView.backgroundColor = UIColor(named: "First")
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: "First")
        } else if ( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: "First")
        } else if ( textField == passwordTF) {
            passwordView.backgroundColor = UIColor(named: "First")
        } else {
            passwordView.backgroundColor = UIColor(named: "First")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: "TF")
        } else if (textField == phoneTF) {
            phoneView.backgroundColor = UIColor(named: "TF")
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: "TF")
        } else if ( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: "TF")
        } else if ( textField == passwordTF) {
            passwordView.backgroundColor = UIColor(named: "TF")
        } else {
            passwordConfrirmationView.backgroundColor = UIColor(named: "TF")
        }
    }
}
