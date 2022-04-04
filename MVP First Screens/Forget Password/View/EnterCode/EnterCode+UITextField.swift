//
//  EnterCode+UITextField.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-02.
//

import UIKit

extension EnterCode: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // On inputing value to textfield
        if ((textField.text?.count)! < 1  && string.count > 0){
            if(textField == firstTF)
            {
                secoundTF.becomeFirstResponder()
            }
            if(textField == secoundTF)
            {
                thirdTF.becomeFirstResponder()
            }
            if(textField == thirdTF)
            {
                fourthTF.becomeFirstResponder()
            }
            if(textField == fourthTF){
                fivethTF.becomeFirstResponder()
            }
            if(textField == fivethTF){
                sixthTF.becomeFirstResponder()
            }


            textField.text = string
            return false
        }
        else if ((textField.text?.count)! >= 1  && string.count == 0){
            // on deleting value from Textfield
            if(textField == secoundTF)
            {
                firstTF.becomeFirstResponder()
            }
            if(textField == thirdTF)
            {
                secoundTF.becomeFirstResponder()
            }
            if(textField == fourthTF)
            {
                thirdTF.becomeFirstResponder()
            }
            if(textField == fivethTF){
                fourthTF.becomeFirstResponder()
            }
            if(textField == sixthTF){
                fivethTF.becomeFirstResponder()
            }

            textField.text = ""
            return false
        }
        else if ((textField.text?.count)! >= 1  )
        {
            textField.text = string
            return false
        }
        return true
    }


}
