//
//  SginUP.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

class SginUP: UIViewController {
    
    // MARK: - Variables
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        super.viewDidLoad()
        title = "SginUP"
        handelView()
        handelTF()
    }
    // MARK: - IBAction
    @IBAction func sginUp(_ sender: UIButton) {
    }
    @IBAction func sginIn(_ sender: UIButton) {
        let VC = Login()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    // MARK: - IBOutlet
    @IBOutlet var nameView: UIView!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var phoneView: UIView!
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var countryView: UIView!
    @IBOutlet var countryTF: UITextField!
    @IBOutlet var cityView: UIView!
    @IBOutlet var cityTF: UITextField!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var passwordConfrirmationView: UIView!
    @IBOutlet var passwordConfirmationTF: UITextField!
    @IBOutlet var sginUp: UIButton!
    // MARK: - Handel View
    func handelView() {
        // handel Sginup butotn
        sginUp.layer.masksToBounds = true
        sginUp.layer.cornerRadius = 24
        sginUp.HandelButtonGradient()
    }
}
