//
//  EnterCode.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-02.
//

import UIKit

class EnterCode: UIViewController {
    // MARK: -Variables
    let attributes = [
        NSAttributedString.Key.foregroundColor : UIColor.white ,
        NSAttributedString.Key.font : UIFont(name: "Almarai-Bold", size: 24)!
    ]
    // MARK: - IBOutlet
    @IBOutlet var firstTF: UITextField!
    @IBOutlet var secoundTF: UITextField!
    @IBOutlet var thirdTF: UITextField!
    @IBOutlet var fourthTF: UITextField!
    @IBOutlet var fivethTF: UITextField!
    @IBOutlet var sixthTF: UITextField!
    // MARK: - IBOutlet
    @IBOutlet var nextButton: UIButton!
    // MARK: - IBAction
    @IBAction func next(_ sender: UIButton) {
        let VC = EnterNewPassword()
        navigationController?.pushViewController(VC, animated: true)
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        handelTF()
        title = "Return code"
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    // MARK: - Handel View
    func handelView() {
        // handel next button
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 24
        HandelGradient.HandelButtonGradient(button: nextButton)
    }
}
