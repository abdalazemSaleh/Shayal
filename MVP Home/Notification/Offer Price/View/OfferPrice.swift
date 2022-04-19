//
//  OfferPrice.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

class OfferPrice: UIViewController {

    // MARK: - Variables
    
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
        // handel main view
        mainView.layer.cornerRadius = 32
        Shadow.handelShadow(view: mainView)
        // handel user image
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
        // handel images views
        previousRateView.layer.borderWidth = 2
        previousRateView.layer.borderColor = UIColor(named: "light")?.cgColor
        previousRateView.layer.cornerRadius = 8
        
        priceView.layer.borderWidth = 2
        priceView.layer.borderColor = UIColor(named: "light")?.cgColor
        priceView.layer.cornerRadius = 8

        deliveryTimeView.layer.borderWidth = 2
        deliveryTimeView.layer.borderColor = UIColor(named: "light")?.cgColor
        deliveryTimeView.layer.cornerRadius = 8

        distanceView.layer.borderWidth = 2
        distanceView.layer.borderColor = UIColor(named: "light")?.cgColor
        distanceView.layer.cornerRadius = 8
        // handel agree button
        agreeButton.layer.masksToBounds = true
        agreeButton.layer.cornerRadius = 24
        HandelGradient.HandelButtonGradient(button: agreeButton)
        // handle refused button
        refusedButton.layer.masksToBounds = true
        refusedButton.layer.cornerRadius = 24
        refusedButton.layer.borderWidth = 2
        refusedButton.layer.borderColor = UIColor(named: "TabBar")?.cgColor

        
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
    }
    

}
