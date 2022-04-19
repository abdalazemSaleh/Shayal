//
//  Notification+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

extension Notification: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Handel Table View
    func handelTableView() {
        // handel delegation
        notificationTV.separatorStyle = .none
        notificationTV.delegate = self
        notificationTV.dataSource = self
        // call cell
        notificationTV.register(UINib(nibName: "NotificationCell", bundle: nil), forCellReuseIdentifier: "NotificationCell")
    }
    // MARK: - Handel Table View Extention
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notificationTV.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = OfferPrice()
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }

}
