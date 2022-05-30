//
//  Notification.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

class Notification: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notification"
        handelTableView()
    }
    // MARK: - Variables
    let constant = Constant()
    // MARK: - IBOutlet
    @IBOutlet var notificationTV: UITableView!
    // MARK: - IBAction
    
}
