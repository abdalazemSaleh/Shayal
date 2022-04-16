//
//  AddComplaintsViewController.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class AddComplaintsViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var close: UIButton!
    @IBOutlet var send: UIButton!
    @IBOutlet var mainView: UIView!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var nameView: UIView!
    @IBOutlet var complaintTV: UITextView!
    // MARK: - IBAction
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func send(_ sender: UIButton) {
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
    }
    // MARK: - Handel View
    func handelView() {
        // main view
        mainView.layer.cornerRadius = 32
        Shadow.handelShadow(view: mainView)
        // handel send
        HandelGradient.HandelButtonGradient(button: send)
        // handel name view
        nameView.layer.cornerRadius = 4
        // handel TV
        complaintTV.layer.cornerRadius = 4
    }
}
