//
//  ContactWithUs.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class ContactWithUs: UIViewController {
    // MARK: - Variables
    fileprivate let applecation = UIApplication.shared
    // MARK: - IBOutlet
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var whatsAppNumber: UILabel!
    // MARK: - IBAction
    @IBAction func phoneNumber(_ sender: UIButton) {
        if let phoneURL = URL(string: "tel://01062690294"){
            if applecation.canOpenURL(phoneURL){
                applecation.open(phoneURL, options: [:], completionHandler: nil)
            }else{
                printContent("error")
            }
        }
    }
    @IBAction func whatsAppNumber(_ sender: UIButton) {
        if let whatsAppURL = URL(string: "https://api.whatsapp.com/send?phone=+201062690294"){
            if applecation.canOpenURL(whatsAppURL){
                applecation.open(whatsAppURL, options: [:], completionHandler: nil)
            }else{
                print("error")
            }
        }
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contact With US"
    }
    
    
    
}
