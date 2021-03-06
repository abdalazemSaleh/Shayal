//
//  OfferPrice.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

class OfferPrice: UIViewController {
    
    // MARK: - Variables
    let constant = Constant()
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
        hanelUserImage()
        handelImageView()
        handelAgreeButton()
        handelRefusedButton()
    }
    // MARK: - IBOutlet
    @IBOutlet var mainView: UIView!
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var previousRate: UILabel!
    @IBOutlet var previousRateView: UIView!
    @IBOutlet var price: UILabel!
    @IBOutlet var priceView: UIView!
    @IBOutlet var deliveryTime: UILabel!
    @IBOutlet var deliveryTimeView: UIView!
    @IBOutlet var distance: UILabel!
    @IBOutlet var distanceView: UIView!
    @IBOutlet var agreeButton: UIButton!
    @IBOutlet var refusedButton: UIButton!
    // MARK: - IBAction
    @IBAction func canselButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func AgrEeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func refusedButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    // MARK: - Handel View
    func handelView() {
        mainView.layer.cornerRadius = 32
        mainView.addShadow()
    }
    
    // Handel User Image
    func hanelUserImage() {
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
    }
    
    // Handel Image View
    func handelImageView() {
        previousRateView.handel_offerPriceIcon()
        priceView.handel_offerPriceIcon()
        deliveryTimeView.handel_offerPriceIcon()
        distanceView.handel_offerPriceIcon()
    }
    // Handel Agree Button
    func handelAgreeButton() {
        agreeButton.layer.masksToBounds = true
        agreeButton.layer.cornerRadius = 24
        agreeButton.HandelButtonGradient()
    }
    // Handel Refused Button
    func handelRefusedButton() {
        refusedButton.layer.masksToBounds = true
        refusedButton.layer.cornerRadius = 24
        refusedButton.layer.borderWidth = 2
        refusedButton.layer.borderColor = UIColor(named: "TabBar")?.cgColor
    }
}
