//
//  EditUserProfile.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class EditUserProfile: UIViewController {
    
    // MARK: - IBoutlet
    @IBOutlet var save: UIButton!
    @IBOutlet var nameView: UIView!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var phoneViwe: UIView!
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var bankNameView: UIView!
    @IBOutlet var bankNameTF: UITextField!
    @IBOutlet var bankAccountView: UIView!
    @IBOutlet var bankAccountTF: UITextField!
    @IBOutlet var countryView: UIView!
    @IBOutlet var countryTF: UITextField!
    @IBOutlet var cityView: UIView!
    @IBOutlet var cityTF: UITextField!
    @IBOutlet var editPsswordView: UIView!
    @IBOutlet var editPasswordTF: UITextField!
    // MARK: - IBAction
    @IBAction func save(_ sender: UIButton) {
    }
    // MARK: - Handel Tab Bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    // MARK: - Handel View
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit profile"
        handelTF()
        handelView()
        save.HandelButtonGradient()
    }
    // MARK: - Handel View
    func handelView() {
        // handel name
        nameView.layer.cornerRadius = 4
        nameTF.layer.cornerRadius = 4
        // handel phone
        phoneViwe.layer.cornerRadius = 4
        phoneTF.layer.cornerRadius = 4
        // handel bank name
        bankNameView.layer.cornerRadius = 4
        bankNameTF.layer.cornerRadius = 4
        // handel bank account
        bankAccountView.layer.cornerRadius = 4
        bankAccountTF.layer.cornerRadius = 4
        // handel country
        countryView.layer.cornerRadius = 4
        countryTF.layer.cornerRadius = 4
        // handel city
        cityView.layer.cornerRadius = 4
        cityTF.layer.cornerRadius = 4
        // handel edit password
        editPsswordView.layer.cornerRadius = 4
        editPasswordTF.layer.cornerRadius = 4
    }
}
