//
//  NotficationPresenter+TableView.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-06-28.
//

import Foundation
import UIKit

extension NotificationPresenter {
    // MARK: - Number Of Sections
    func number_ofSections() -> Int {
        return 4
    }
    // tableView: UITableView, atIndexPath indexPath: IndexPath
    // MARK: - Cell For Row
    func setUpNotificationCell(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: constant.notificationCell, for: indexPath) as! NotificationCell
        return cell
    }
}
