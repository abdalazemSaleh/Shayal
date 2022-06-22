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
        couponTF.attributedPlaceholder = NSAttributedString(string: "Coupon", attributes: constant.attributes)
        // handel courner radius
        fromTF.handeltextFieldView(view: fromView, string: "Location")
        toTF.addImageToTextField(view: toView, string: "Location")
        payloadTF.addImageToTextField(view: payloadView, string: "Polygon")
        vehicleModelTF.addImageToTextField(view: vehicleModelView, string: "Polygon")
        weightTF.addImageToTextField(view: weightView, string: "Kg")
        vehicleTypeTF.addImageToTextField(view: vehicleTypeTF, string: "Polygon")
        couponTF.handelTextFieldSpacer()
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
            fromView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if (textField == toTF) {
            toView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if ( textField == payloadTF) {
            payloadView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if ( textField == vehicleModelTF) {
            vehicleModelView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if ( textField == weightTF) {
            weightView.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
        } else if ( textField == vehicleTypeTF) {
            vehicleTypeTF.backgroundColor = UIColor(named: constant.set_selectedTextFielddColorToView)
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
