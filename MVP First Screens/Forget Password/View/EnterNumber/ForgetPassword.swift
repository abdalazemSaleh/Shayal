//
//  ForgetPassword.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//

import UIKit

class ForgetPassword: UIViewController {
    
    // MARK: - Variables
    var presnter: ForgetPasswordPresenter!

    // MARK: - IBOutlet
    @IBOutlet var textFieldView: UIView!
    @IBOutlet var phoneNumberTF: UITextField!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var nectOutlet: UIButton!
    // MARK: - IBAction
    @IBAction func next(_ sender: UIButton) {
        presnter.next(phone: phoneNumberTF.text ?? "")
        let VC = VerificationSuccess()
        VC.delegate = self
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        presnter = ForgetPasswordPresenter(view: self)
        title = "Forget Password"
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    // MARK: - Handel View
    func handelView() {
        // handel phone number label
        phoneNumberLabel.isHidden = true
        // handel text filed
        phoneNumberTF.delegate = self
        textFieldView.layer.cornerRadius = 8
        phoneNumberTF.layer.cornerRadius = 8
        // handel button
        nectOutlet.layer.masksToBounds = true
        nectOutlet.layer.cornerRadius = 24
        HandelGradient.HandelButtonGradient(button: nectOutlet)
    }
}
// MARK: - Text Field Extention
extension ForgetPassword: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: "First")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textFieldView.backgroundColor = UIColor(named: "TF")
    }
}
// MARK: - Protocol Extention
extension ForgetPassword: handelVerification {
    func dismis() {
        let VC = EnterCode()
        navigationController?.pushViewController(VC, animated: true)
    }
}

