//
//  Login.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-28.
//

import UIKit

class Login: UIViewController {
    
    // MARK: - Variables
    var presnter: LoginPresenter!
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPNavigation()
        handelView()
        presnter = LoginPresenter(view: self)
    }
    // MARK: - Hnadle View
    func handelView() {
        // handel text field
        phoneNumber.delegate = self
        password.delegate = self
        // handel text field label
        phoneNumberLabel.isHidden = true
        passwordLabel.isHidden = true
        // handel login button gradient
        login.layer.cornerRadius = 24
        let first = UIColor(named: "First")
        let secound = UIColor(named: "Secound")
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = login.bounds
        gradientLayer.colors = [secound!.cgColor, first!.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.locations = [0.0, 1.0]
        login.layer.insertSublayer(gradientLayer, at: 0)
    }
    // MARK: - Set Up Navigation
    func setUPNavigation() {
        navigationController?.isNavigationBarHidden = false
        navigationItem.title = "Login"
        title = "Forget Password"
    }
    // MARK: - IBOutlet
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var password: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var login: UIButton!
    
    // MARK: - IBAction
    @IBAction func Login(_ sender: UIButton) {
        presnter.login(phone: phoneNumber.text ?? "", password: password.text ?? "")
        let VC = ForgetPassword()
        navigationController?.pushViewController(VC, animated: true)
    }
}


extension Login: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = UIColor.red
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = UIColor.blue
    }
}



