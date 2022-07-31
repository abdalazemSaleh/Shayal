//
//  Login.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-28.
//

import UIKit
import TransitionButton

class Login: UIViewController {
    
    // MARK: - Variables
    let constant = Constant()
    var presnter: LoginPresenter!
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPNavigation()
        textFieldDelegate()
        handelTextFieldLable()
        phoneNumberStyle()
        passwordStyle()
        textFieldSpacer()
        loginButtonStyle()
        presnter = LoginPresenter(view: self)
    }
    // MARK: - IBAction
    @IBAction func Login(_ sender: TransitionButton) {
        login.startAnimation()
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.login.startAnimation()
            self.goToHomeScreen()
        }
    }
    
    func goToHomeScreen() {
        self.presnter.login(phone: self.phoneNumber.text ?? "", password: self.password.text ?? "")
        let moreVC = constant.setUpStoryboard(name: "Home").instantiateViewController(identifier: "tabBarScreen")
        moreVC.fullScreenNavigation()
        self.present(moreVC, animated: true, completion: nil)
    }
    
    @IBAction func sginUp(_ sender: UIButton) {
        let VC = SginUP()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func forgetPassword(_ sender: UIButton) {
        let VC = ForgetPassword()
        self.navigationController?.pushViewController(VC, animated: true)
    }
    // MARK: - IBOutlet
    @IBOutlet var phoneNumberView: UIView!
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var password: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var login: TransitionButton!
    // MARK: - Hnadle View
    func loginButtonStyle() {
        // handel login button gradient
        login.layer.masksToBounds = true
        login.layer.cornerRadius = 24
        login.HandelButtonGradient()
    }
    // MARK: - Set Up Navigation
    func setUPNavigation() {
        navigationController?.isNavigationBarHidden = false
        title = "Login"
    }
}



