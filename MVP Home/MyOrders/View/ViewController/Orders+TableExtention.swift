//
//  Orders+TableExtention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import UIKit

extension OrderViewController: UITableViewDelegate, UITableViewDataSource {
    // handel table view delegate&datasours
    func handelTbaleView() {
        ordersTableView.delegate = self
        ordersTableView.dataSource = self
        ordersTableView.separatorStyle = .none
        ordersTableView.register(UINib(nibName: "PendingOrders", bundle: nil), forCellReuseIdentifier: "PendingOrders")
        ordersTableView.register(UINib(nibName: "ActiveOrders", bundle: nil), forCellReuseIdentifier: "ActiveOrders")
        ordersTableView.register(UINib(nibName: "ExpiredOrders", bundle: nil), forCellReuseIdentifier: "ExpiredOrders")
    }
    // set up table view
    func numberOfSections(in tableView: UITableView) -> Int {
        if myCell == "active" {
            return 4
        } else if myCell == "expired" {
            return 5
        } else if myCell == "pending" {
            return 3
        }
        return 0
    }
    func tableView(_ tableView: UITableView,  numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if myCell == "expired" {
            let cell = ordersTableView.dequeueReusableCell(withIdentifier: "ExpiredOrders", for: indexPath) as! ExpiredOrders
            // Corner Radius & Shadow
            cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
            return cell
        } else if myCell == "active" {
            let cell = ordersTableView.dequeueReusableCell(withIdentifier: "ActiveOrders", for: indexPath) as! ActiveOrders
            // Corner Radius & Shadow
            cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
            return cell
        }
        let cell = ordersTableView.dequeueReusableCell(withIdentifier: "PendingOrders", for: indexPath) as! PendingOrders
        cell.view.layer.applyCornerRadiusShadow(color: .black, alpha: 0.38, x: 0, y: 3, blur: 10, spread: 0, cornerRadiusValue: 16)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("done")
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if myCell == "active" {
            return 128
        } else if myCell == "expired" {
            return 96
        } else if myCell == "pending" {
            return 168
        }
        return 0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
}
