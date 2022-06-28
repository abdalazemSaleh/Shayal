//
//  Notification.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

class Notification: UIViewController {

    // MARK: - Variables
    var presenter: NotificationPresenter!
    let constant = Constant()

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notification"
        presenter = NotificationPresenter(view: self)
        TableViewDelegateAndDataSource()
        registerTableViewCell()
        tableViewStyle()
    }
    
    // MARK: - IBOutlet
    @IBOutlet var notificationTV: UITableView!
    // MARK: - IBAction
    
}
