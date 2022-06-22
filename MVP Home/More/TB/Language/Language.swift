//
//  Language.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-06.
//

import UIKit

class Language: UIViewController {
    
    // MARK: - IBOtlet
    @IBOutlet var englishView: UIView!
    @IBOutlet var englishRight: UIImageView!
    @IBOutlet var arabicView: UIView!
    @IBOutlet var arabicRight: UIImageView!
    @IBOutlet var save: UIButton!
    @IBOutlet var mainView: UIView!
    // MARK: - IBAction
    @IBAction func casnel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func save(_ sender: UIButton) {
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
    }
    // MARK: - Handel View
    func handelView() {
        // handel main view
        mainView.layer.cornerRadius = 32
        mainView.addShadow()
        // handel save button
        save.HandelButtonGradient()
        // handel english view
        englishView.layer.cornerRadius = 4
        englishView.layer.borderWidth = 1
        englishView.layer.borderColor = UIColor(named: "TabBar")?.cgColor
        // handel arabic view
        arabicView.layer.cornerRadius = 4
        arabicView.layer.borderWidth = 1
        arabicView.layer.borderColor = UIColor(named: "TabBar")?.cgColor
        // test
        arabicRight.isHidden = true
        
    }
    
    
    
    
}
