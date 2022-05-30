//
//  Bill.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit

class Bill: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bill"
        handelView()
    }
    // MARK: - IBOutlet
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var monyView: UIView!
    @IBOutlet var finalPrice: UILabel!
    @IBOutlet var nextButton: UIButton!
    // MARK: - IBAction
    @IBAction func nextButton(_ sender: UIButton) {
        let VC = PaymentMethod()
        VC.delegate = self
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    // MARK: - Handel View
    func handelView(){
        // handel user image
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
        // handel mony view
        monyView.layer.borderWidth = 2
        monyView.layer.borderColor = UIColor(named: "light")?.cgColor
        monyView.layer.cornerRadius = 8
        // handel next button
        nextButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 24
        nextButton.HandelButtonGradient()
    }
    

}
