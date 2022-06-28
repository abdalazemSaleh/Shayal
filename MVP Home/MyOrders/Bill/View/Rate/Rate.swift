//
//  Rate.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-17.
//

import UIKit
import Cosmos

class Rate: UIViewController {
    // MARK: - Variable
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        handelRateView()
        handelTextView()
        handelUserImage()
        handelRateButton()
    }
    // MARK: - IBOutlet
    @IBOutlet var rateView: CosmosView!
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var rateTV: UITextView!
    @IBOutlet var rateButton: UIButton!
    @IBOutlet var mainView: UIView!
    // MARK: - IBAction
    @IBAction func rateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func canselButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    // MARK: - Handel View
    // Handel Rate View
    func handelRateView() {
        rateView.settings.emptyImage = UIImage(named: "star")
        print(rateView.rating)
    }
    // Handel Rate Button
    func handelRateButton() {
        rateButton.layer.cornerRadius = 24
        rateButton.layer.masksToBounds = true
        rateButton.HandelButtonGradient()
    }
    // Handel View
    func handelView() {
        mainView.layer.cornerRadius = 32
        mainView.addShadow()
    }
    // Handel User Image
    func handelUserImage() {
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
    }
    // Handel Text View
    func handelTextView() {
        rateTV.layer.cornerRadius = 8
    }
}
