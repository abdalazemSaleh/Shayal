//
//  PaymentMethod.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit
import Lottie

class PaymentMethod: UIViewController {
    // MARK: - Variables
    var delegate: paymentProtocol?
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        handelAnimation()
        handelNextButton()
        handelElctronic()
        handelCashPayment()
    }
    // MARK: - IBOutlet
    @IBOutlet var mainView: UIView!
    @IBOutlet var animationView: AnimationView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var electronicPayment: UIButton!
    @IBOutlet var cashPayment: UIButton!
    // MARK: - IBAction
    @IBAction func nextButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        delegate?.payment()
    }
    // MARK: - Handel View
    // Handel View
    func handelView() {
        mainView.layer.cornerRadius = 12
        mainView.addShadow()
    }
    
    // Handel Animation
    func handelAnimation() {
        animationView.animationSpeed = 1
        animationView.play()
    }
    
    // Handel Next Button
    func handelNextButton() {
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 24
        nextButton.HandelButtonGradient()
    }
    
    // Handel Elctronic
    func handelElctronic() {
        electronicPayment.layer.cornerRadius = electronicPayment.frame.size.width / 2
        electronicPayment.layer.borderWidth = 2
        electronicPayment.layer.borderColor = UIColor(named: "TabBar")?.cgColor
    }
    
    // Handel Cash Paymnet
    func handelCashPayment() {
        cashPayment.layer.cornerRadius = cashPayment.frame.size.width / 2
        cashPayment.layer.borderWidth = 2
        cashPayment.layer.borderColor = UIColor(named: "TabBar")?.cgColor
    }
}
