//
//  Login.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-28.
//

import UIKit
import Alamofire

class Login: UIViewController {
    
    // MARK: - Variables
    var presnter: LoginPresenter!
    let attributes = [
        NSAttributedString.Key.foregroundColor : UIColor.white ,
        NSAttributedString.Key.font : UIFont(name: "Almarai-Bold", size: 12)!
    ]
    // MARK: - IBOutlet
    @IBOutlet var phoneNumberView: UIView!
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var password: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var login: UIButton!
    // MARK: - IBAction
    @IBAction func Login(_ sender: UIButton) {
        self.presnter.login(phone: self.phoneNumber.text ?? "", password: self.password.text ?? "")
        let storyBoard = UIStoryboard.init(name: "Home", bundle: Bundle.main)
        let moreVC = storyBoard.instantiateViewController(identifier: "tabBarScreen")
        moreVC.modalPresentationStyle = .overFullScreen
        moreVC.modalTransitionStyle = .crossDissolve
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
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPNavigation()
        handelTF()
        handelView()
        presnter = LoginPresenter(view: self)
    }
    // MARK: - Hnadle View
    func handelView() {
        // handel login button gradient
        login.layer.masksToBounds = true
        login.layer.cornerRadius = 24
        HandelGradient.HandelButtonGradient(button: login)
    }
    // MARK: - Set Up Navigation
    func setUPNavigation() {
        navigationController?.isNavigationBarHidden = false
        title = "Login"
    }
}



