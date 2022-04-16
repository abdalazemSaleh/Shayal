//
//  HandelTF.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit

class TF {
    static func handelTFSpace(textfeild: UITextField){
        var textView: UIView {
            let view = UIView()
            view.backgroundColor = .clear
            view.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
            return view
        }
        textfeild.layer.cornerRadius = 4
        textfeild.leftView = textView
        textfeild.leftViewMode = .always
    }
    static func addImage(tettfeild: UITextField, image: String) {
        let image = UIImage(named: image)
        var imageView: UIImageView {
            let view = UIImageView()
            view.backgroundColor = .clear
            view.frame = CGRect(x: 12, y: 16, width: 12, height: 12)
            view.image = image
            return view
        }
        tettfeild.rightView = imageView
        tettfeild.rightViewMode = .always
    }
}
