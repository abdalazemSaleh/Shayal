//
//  EnterCode.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-02.
//

import UIKit

class EnterCode: UIViewController {
    // MARK: - Variables
    @IBOutlet var firstTF: UITextField!
    @IBOutlet var secoundTF: UITextField!
    @IBOutlet var thirdTF: UITextField!
    @IBOutlet var fourthTF: UITextField!
    @IBOutlet var fivethTF: UITextField!
    @IBOutlet var sixthTF: UITextField!
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        handelTF()
        title = "Return code"
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    // MARK: - Handel Text Field Delegate
    func handelTF() {
        firstTF.delegate = self
        secoundTF.delegate = self
        thirdTF.delegate = self
        fourthTF.delegate = self
        fivethTF.delegate = self
        sixthTF.delegate = self
    }
    // MARK: - Handel View
    func handelView() {
        // handel next button
        nextButton.layer.cornerRadius = 24
        let first = UIColor(named: "First")
        let secound = UIColor(named: "Secound")
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = nextButton.bounds
        gradientLayer.colors = [secound!.cgColor, first!.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.locations = [0.0, 1.0]
        nextButton.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // MARK: - IBOutlet
    @IBOutlet var nextButton: UIButton!
    // MARK: - IBAction
    @IBAction func next(_ sender: UIButton) {
    }

}
