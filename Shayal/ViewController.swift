//
//  ViewController.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var shayalLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shayalLogo.alpha = 0
    }
    
    // MARK: - Handel Anemation


    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1) {
            self.shayalLogo.alpha = 1
        } completion: { (true) in
            UIView.animate(withDuration: 0.1) {
                self.shayalLogo.alpha = 1
            } completion: { (true) in
                UIView.animate(withDuration: 0.1) {
                    self.shayalLogo.alpha = 0
                } completion: { (true) in
                    UIView.animate(withDuration: 0.1) {
                        self.shayalLogo.image = UIImage(named: "Logo")
                        self.shayalLogo.alpha = 1
                        let VC = Intro1()
                        self.navigationController?.pushViewController(VC, animated: true)
                    }
                }
            }
        }
        
    }
    
    
    
    
    
}

