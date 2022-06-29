//
//  EnterCode.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-02.
//

import UIKit

class EnterCode: UIViewController {
    // MARK: -Variables
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Return code"
        nextButtonView()
        textFieldDelegate()
        setAttributeForTextField()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    // MARK: - IBAction
    @IBAction func next(_ sender: UIButton) {
        let VC = EnterNewPassword()
        navigationController?.pushViewController(VC, animated: true)
    }
    // MARK: - IBOutlet
    @IBOutlet var firstTF: UITextField!
    @IBOutlet var secoundTF: UITextField!
    @IBOutlet var thirdTF: UITextField!
    @IBOutlet var fourthTF: UITextField!
    @IBOutlet var fivethTF: UITextField!
    @IBOutlet var sixthTF: UITextField!
    @IBOutlet var nextButton: UIButton!
    // MARK: - Handel View
    func nextButtonView() {
        // handel next button
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 24
        nextButton.HandelButtonGradient()
    }
}
