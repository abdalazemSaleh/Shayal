//
//  Complaints.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class Complaints: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var complaintsTableView: UITableView!
    // MARK: - IBAction
    @objc func addTapped() {
        let VC = AddComplaintsViewController()
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    // MARK: - Handel Tab Bar
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Complaints"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .plain, target: self, action: #selector(addTapped))
        handelTableView()
    }


}
