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
    var delegate: paymentPr?
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
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
    func handelView() {
        // main view
        mainView.layer.cornerRadius = 12
        mainView.handelShadow()
        // handel animation
        animationView.animationSpeed = 1
        animationView.play()
        // handel next button
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 24
        nextButton.HandelButtonGradient()
        // handel elctronic & cash payment
        electronicPayment.layer.cornerRadius = electronicPayment.frame.size.width / 2
        cashPayment.layer.cornerRadius = cashPayment.frame.size.width / 2
        electronicPayment.layer.borderWidth = 2
        cashPayment.layer.borderWidth = 2
        electronicPayment.layer.borderColor = UIColor(named: "TabBar")?.cgColor
        cashPayment.layer.borderColor = UIColor(named: "TabBar")?.cgColor
    }
}
