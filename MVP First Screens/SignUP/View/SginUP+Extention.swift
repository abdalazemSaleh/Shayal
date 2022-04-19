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
        nameView.layer.cornerRadius = 4
        nameTF.layer.cornerRadius = 4
        nameTF.attributedPlaceholder = NSAttributedString(string: "Name", attributes: attributes)
        TF.handelTFSpace(textfeild: nameTF)
        
        phoneView.layer.cornerRadius = 4
        phoneTF.layer.cornerRadius = 4
        phoneTF.attributedPlaceholder = NSAttributedString(string: "Phone Number", attributes: attributes)
        TF.handelTFSpace(textfeild: phoneTF)
        
        countryView.layer.cornerRadius = 4
        countryTF.layer.cornerRadius = 4
        countryTF.attributedPlaceholder = NSAttributedString(string: "Country", attributes: attributes)
        TF.handelTFSpace(textfeild: countryTF)
        
        cityView.layer.cornerRadius = 4
        cityTF.layer.cornerRadius = 4
        cityTF.attributedPlaceholder = NSAttributedString(string: "City", attributes: attributes)
        TF.handelTFSpace(textfeild: cityTF)
        
        passwordView.layer.cornerRadius = 4
        passwordTF.layer.cornerRadius = 4
        passwordTF.attributedPlaceholder = NSAttributedString(string: "Password", attributes: attributes)
        TF.handelTFSpace(textfeild: passwordTF)
        
        passwordConfrirmationView.layer.cornerRadius = 4
        passwordConfirmationTF.layer.cornerRadius = 4
        passwordConfirmationTF.attributedPlaceholder = NSAttributedString(string: "Password Confirmation", attributes: attributes)
        TF.handelTFSpace(textfeild: passwordConfirmationTF)
    }
    // MARK: - Handel Text Field Extention
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
            passwordConfrirmationView.backgroundColor = UIColor(named: "First")
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
