//
//  Notification+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit

extension Notification: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Handel Table View
    func TableViewDelegateAndDataSource() {
        notificationTV.delegate = self
        notificationTV.dataSource = self
    }
    
    // Register Table View Cell
    func registerTableViewCell() {
        notificationTV.register(UINib(nibName: constant.notificationCell, bundle: nil), forCellReuseIdentifier: constant.notificationCell)
    }
    
    // Table View Style
    func tableViewStyle() {
        notificationTV.separatorStyle = .none
    }
    // MARK: - Number OF Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.number_ofSections()
    }
    
    // MARK: - Cell For Row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // MARK: - Cell For Row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return presenter.setUpNotificationCell(tableView: tableView, atIndexPath: indexPath)
    }
    
    // MARK: - Did Select Row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = OfferPrice()
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
    
    // MARK: - View For Header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headerForSection()
    }
    func headerForSection() -> UIView {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    // MARK: - Hight For Row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }

}
