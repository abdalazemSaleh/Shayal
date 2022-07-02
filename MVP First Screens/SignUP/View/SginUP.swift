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
        super.viewDidLoad()
        title = "SginUP"
        sginUpButtonStyle()
        textFieldDelegate()
        textFeildStyle()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardApper), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDisApper), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    
    
    var isExpend: Bool = false
    @objc func keyboardApper() {
        print("cell")
        
        if !isExpend {
            print("cell = excute")
            self.scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.scrollView.frame.height + 400)
            isExpend = true
        }
        
    }
    
    @objc func keyboardDisApper() {
        if isExpend {
            self.scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.scrollView.frame.height - 400)
            self.isExpend = false
        }
    }
    // MARK: - IBOutlet
    @IBOutlet var scrollView: UIScrollView!
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
    
    
    // MARK: - IBAction
    @IBAction func sginUp(_ sender: UIButton) {
    }
    @IBAction func sginIn(_ sender: UIButton) {
        let VC = Login()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    // MARK: - Handel View
    func sginUpButtonStyle() {
        // handel Sginup butotn
        sginUp.layer.masksToBounds = true
        sginUp.layer.cornerRadius = 24
        sginUp.HandelButtonGradient()
    }
}
