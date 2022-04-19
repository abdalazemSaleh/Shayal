//
//  AddNewOrder+TFExtention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit


extension AddNewOrder: UITextFieldDelegate {
    

    // handel TF courner radius & delegation
    func handelTF() {
        couponTF.layer.borderWidth = 1
        couponTF.layer.borderColor = UIColor(named: "TabBar")?.cgColor
        couponTF.layer.cornerRadius = 8
        couponTF.attributedPlaceholder = NSAttributedString(string: "Coupon", attributes: attributes as [NSAttributedString.Key : Any])
        // handel courner radius
        fromView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: fromTF)
        TF.addImage(tettfeild: fromTF, image: "Location")
        
        toView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: toTF)
        TF.addImage(tettfeild: toTF, image: "Location")
        
        payloadView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: payloadTF)
        TF.addImage(tettfeild: payloadTF, image: "Polygon")

        vehicleModelView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: vehicleModelTF)
        TF.addImage(tettfeild: vehicleModelTF, image: "Polygon")

        weightView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: weightTF)
        TF.addImage(tettfeild: weightTF, image: "Kg")

        vehicleTypeView.layer.cornerRadius = 4
        TF.handelTFSpace(textfeild: vehicleTypeTF)
        TF.addImage(tettfeild: vehicleTypeTF, image: "Polygon")

        TF.handelTFSpace(textfeild: couponTF)
        // handel delegation
        fromTF.delegate = self
        toTF.delegate = self
        payloadTF.delegate = self
        vehicleModelTF.delegate = self
        weightTF.delegate = self
        vehicleTypeTF.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == fromTF) {
            fromView.backgroundColor = UIColor(named: "First")
        } else if (textField == toTF) {
            toView.backgroundColor = UIColor(named: "First")
        } else if ( textField == payloadTF) {
            payloadView.backgroundColor = UIColor(named: "First")
        } else if ( textField == vehicleModelTF) {
            vehicleModelView.backgroundColor = UIColor(named: "First")
        } else if ( textField == weightTF) {
            weightView.backgroundColor = UIColor(named: "First")
        } else if ( textField == vehicleTypeTF) {
            vehicleTypeTF.backgroundColor = UIColor(named: "First")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == fromTF) {
            fromView.backgroundColor = UIColor(named: "light")
        } else if (textField == toTF) {
            toView.backgroundColor = UIColor(named: "light")
        } else if ( textField == payloadTF) {
            payloadView.backgroundColor = UIColor(named: "light")
        } else if ( textField == vehicleModelTF) {
            vehicleModelView.backgroundColor = UIColor(named: "light")
        } else if ( textField == weightTF) {
            weightView.backgroundColor = UIColor(named: "light")
        } else if ( textField == vehicleTypeTF) {
            vehicleTypeView.backgroundColor = UIColor(named: "light")
        }
    }
}
