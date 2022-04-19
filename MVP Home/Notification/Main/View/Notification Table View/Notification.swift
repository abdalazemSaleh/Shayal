//
//  Notification.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

class Notification: UIViewController {

    // MARK: - Variables
    
    // MARK: - IBOutlet
    @IBOutlet var notificationTV: UITableView!
    
    // MARK: - IBAction
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notification"
        handelTableView()
    }
}
