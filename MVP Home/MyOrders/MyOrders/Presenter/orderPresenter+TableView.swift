//
//  orderPresenter+TableView.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-06-27.
//

import UIKit

extension OrdersPresenter {
    // Set Expired Cell
    func setExpiredCell(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "ExpiredOrders", for: indexPath) as! ExpiredOrders
                    // Corner Radius & Shadow
                    cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
                    return cell
    }
    // Set Active Cell
    func setActiveCell(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActiveOrders", for: indexPath) as! ActiveOrders
        // Corner Radius & Shadow
        cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
        return cell
    }
    // Set Pending Cell
    func setPendingCell(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PendingOrders", for: indexPath) as! PendingOrders
        cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
        return cell
    }
}
