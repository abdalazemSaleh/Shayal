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
    func handelView() {
        // handel rate view
        rateView.settings.emptyImage = UIImage(named: "star")
        print(rateView.rating)
        // handel Rate Button
        rateButton.layer.cornerRadius = 24
        rateButton.layer.masksToBounds = true
        rateButton.HandelButtonGradient()
        // handel view
        mainView.layer.cornerRadius = 32
        mainView.handelShadow()
        // handel user image
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        // handel text view
        rateTV.layer.cornerRadius = 8
        
    }
}
