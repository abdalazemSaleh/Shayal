//
//  EnterNewPassword.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

class EnterNewPassword: UIViewController {
    
    // MARK: - Variables
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Enter New Password"
        handelView()
        newPasswordTF.delegate = self
        confirmationPasswordTF.delegate = self
    }
    // MARK: - IBAction
    @IBAction func saveButton(_ sender: UIButton) {
    }
    // MARK: - IBOutlet
    @IBOutlet var newPasswordView: UIView!
    @IBOutlet var newPasswordTF: UITextField!
    @IBOutlet var passwordConfirmationView: UIView!
    @IBOutlet var confirmationPasswordTF: UITextField!
    @IBOutlet var saveButton: UIButton!
    // MARK: - Handel View
    func handelView() {
        // handel save button
        saveButton.layer.masksToBounds = true
        saveButton.layer.cornerRadius = 24
        saveButton.HandelButtonGradient()
        // handel view
        newPasswordView.layer.cornerRadius = 4
        newPasswordTF.layer.cornerRadius = 4
        passwordConfirmationView.layer.cornerRadius = 4
        confirmationPasswordTF.layer.cornerRadius = 4
    }
}
