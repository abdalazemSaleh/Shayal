//
//  SginUP.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

class SginUP: UIViewController {
    
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
    // MARK: - IBAction
    @IBAction func sginUp(_ sender: UIButton) {
    }
    @IBAction func sginIn(_ sender: UIButton) {
        let VC = Login()
        navigationController?.pushViewController(VC, animated: true)
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SginUP"
        handelView()
        handelTFDelegation()
    }
    // MARK: - Handel TF Delegate
    func handelTFDelegation() {
        nameTF.delegate = self
        phoneTF.delegate = self
        countryTF.delegate = self
        cityTF.delegate = self
        passwordTF.delegate = self
        passwordConfirmationTF.delegate = self
    }
    // MARK: - Handel View
    func handelView() {
        // handel Sginup butotn
        sginUp.layer.masksToBounds = true
        sginUp.layer.cornerRadius = 24
        HandelGradient.HandelButtonGradient(button: sginUp)
        // handel view & TF corner radius
        nameView.layer.cornerRadius = 4
        nameTF.layer.cornerRadius = 4
        phoneView.layer.cornerRadius = 4
        phoneTF.layer.cornerRadius = 4
        countryView.layer.cornerRadius = 4
        countryTF.layer.cornerRadius = 4
        cityView.layer.cornerRadius = 4
        cityTF.layer.cornerRadius = 4
        passwordView.layer.cornerRadius = 4
        passwordTF.layer.cornerRadius = 4
        passwordConfrirmationView.layer.cornerRadius = 4
        passwordConfirmationTF.layer.cornerRadius = 4
    }
    
}
