//
//  UserProfile.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class UserProfile: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var creaditView: UIView!
    @IBOutlet var orderdView: UIView!
    @IBOutlet var creadit: UILabel!
    @IBOutlet var orders: UILabel!
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var phoneView: UIView!
    @IBOutlet var countryTF: UITextField!
    // MARK: - IBAction
    @IBOutlet var countryView: UIView!
    @objc func addTapped() {
        let VC = EditUserProfile()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "edit"), style: .plain, target: self, action: #selector(addTapped))
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
    func handelView() {
        // creadit view
        creaditView.layer.cornerRadius = 4
        creaditView.layer.borderWidth = 1
        creaditView.layer.borderColor = UIColor.white.cgColor
        // orderd view
        orderdView.layer.cornerRadius = 4
        orderdView.layer.borderWidth = 1
        orderdView.layer.borderColor = UIColor.white.cgColor
        // phone view
        phoneView.layer.cornerRadius = 4
        // country view
        countryView.layer.cornerRadius = 4
    }
}
