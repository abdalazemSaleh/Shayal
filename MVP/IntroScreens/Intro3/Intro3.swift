//
//  Intro3.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-28.
//

import UIKit

class Intro3: UIViewController {
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBAction
    @IBAction func skipButton(_ sender: UIButton) {
    }
    @IBAction func nextButton(_ sender: UIButton) {
        let VC = Intro4()
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
