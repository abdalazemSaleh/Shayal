//
//  VerificationSuccess.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-02.
//

import UIKit

class VerificationSuccess: UIViewController {
    // MARK: - Variables
    var delegate: handelVerification!
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelDismis()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    // MARK: - IBOutlet
    @IBOutlet var myView: UIView!
    // MARK: - Handel Dismis
    func handelDismis() {
        myView.layer.cornerRadius = 8
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { [self] Timer in
            self.dismiss(animated: true, completion: nil)
            delegate?.dismis()
        }
    }
}
// MARK: - Protocol
protocol handelVerification {
    func dismis()
}
