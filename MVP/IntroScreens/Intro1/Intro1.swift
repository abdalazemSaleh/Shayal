//
//  Intro1.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-28.
//

import UIKit

class Intro1: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello world")
        handelNavigationItem()
    }
    // MARK: - Hnadel navigatio item
    func handelNavigationItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Skip",
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(addAction))
    }
    // Skip Button Action
    @objc func addAction(){
        let VC = Login()
        navigationController?.pushViewController(VC, animated: true)
    }
    // MARK: - IBAction
    @IBAction func nextButton(_ sender: UIButton) {
        let VC = Intro2()
        self.navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func skipButton(_ sender: UIButton) {
    }
}
