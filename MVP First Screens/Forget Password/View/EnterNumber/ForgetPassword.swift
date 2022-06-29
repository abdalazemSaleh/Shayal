//
//  ForgetPassword.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//
    
import UIKit

class ForgetPassword: UIViewController {
    // MARK: - Variables
    let constant = Constant()
    var presnter: ForgetPasswordPresenter!
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Forget Password"
        presnter = ForgetPasswordPresenter(view: self)
        
        handelView()
        hidePhoneNumberLable()
        textFeildDelegate()
        HandeltextFieldView()
        textFeildStyle()
        textFeildHandelSpacer()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        self.phoneNumberTF.handelTextFieldSpacer()
    }
    // MARK: - IBAction
    @IBAction func next(_ sender: UIButton) {
        goToVerificationSuccessVcAndCheckIfPhoneIsImpty()
    }
    
    func goToVerificationSuccessVcAndCheckIfPhoneIsImpty() {
        presnter.next(phone: phoneNumberTF.text ?? "")
        let VC = VerificationSuccess()
        VC.delegate = self
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    // MARK: - IBOutlet
    @IBOutlet var textFieldView: UIView!
    @IBOutlet var phoneNumberTF: UITextField!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var nectOutlet: UIButton!
    // MARK: - Handel View
    func handelView() {
        nectOutlet.layer.masksToBounds = true
        nectOutlet.layer.cornerRadius = 24
        nectOutlet.HandelButtonGradient()
    }
}
