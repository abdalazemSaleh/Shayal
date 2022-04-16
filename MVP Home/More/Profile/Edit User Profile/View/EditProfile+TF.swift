//
//  EditProfile+TF.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit


extension EditUserProfile: UITextFieldDelegate {
    // MARK: - Handel TF
    func handelTF() {
        nameTF.delegate = self
        phoneTF.delegate = self
        bankNameTF.delegate = self
        bankAccountTF.delegate = self
        countryTF.delegate = self
        cityTF.delegate = self
        editPasswordTF.delegate = self
    }
    // MARK: - Text Field Delegat
    // did being edit
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: "First")
        } else if (textField == phoneTF) {
            phoneViwe.backgroundColor = UIColor(named: "First")
        } else if ( textField == bankNameTF) {
            bankNameView.backgroundColor = UIColor(named: "First")
        } else if ( textField == bankAccountTF) {
            bankAccountView.backgroundColor = UIColor(named: "First")
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: "First")
        } else if ( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: "First")
        } else {
            editPsswordView.backgroundColor = UIColor(named: "First")
        }
    }
    // did end edit
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == nameTF) {
            nameView.backgroundColor = UIColor(named: "TF")
        } else if (textField == phoneTF) {
            phoneViwe.backgroundColor = UIColor(named: "TF")
        } else if ( textField == bankNameTF) {
            bankNameView.backgroundColor = UIColor(named: "TF")
        } else if ( textField == bankAccountTF) {
            bankAccountView.backgroundColor = UIColor(named: "TF")
        } else if ( textField == countryTF) {
            countryView.backgroundColor = UIColor(named: "TF")
        } else if( textField == cityTF) {
            cityView.backgroundColor = UIColor(named: "TF")
        } else {
            editPsswordView.backgroundColor = UIColor(named: "TF")
        }
    }
}
