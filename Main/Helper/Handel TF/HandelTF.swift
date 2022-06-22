//
//  HandelTF.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit

extension UITextField{
    // MARK: - handel texteField Spacer
     func handelTextFieldSpacer(){
        var textView: UIView {
            let view = UIView()
            view.backgroundColor = .clear
            view.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
            return view
        }
        self.layer.cornerRadius = 4
        self.leftView = textView
        self.leftViewMode = .always
    }
    
    // MARK: - used in SginUP Screen
    func handeltextFieldView(view: UIView, string: String) {
        let constant = Constant()
        view.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        self.attributedPlaceholder = NSAttributedString(string: string, attributes: constant.attributes)
        handelTextFieldSpacer()
    }
    // MARK: - add image to my textfield
    func addImageToTextField(view: UIView, string: String) {
        view.layer.cornerRadius = 4
        self.handelTextFieldSpacer()
        self.addImage(image: string)
    }
    // handel add image
    func addImage(image: String) {
       let image = UIImage(named: image)
       var imageView: UIImageView {
           let view = UIImageView()
           view.backgroundColor = .clear
           view.frame = CGRect(x: 12, y: 16, width: 12, height: 12)
           view.image = image
           return view
       }
        self.rightView = imageView
        self.rightViewMode = .always
   }

}
