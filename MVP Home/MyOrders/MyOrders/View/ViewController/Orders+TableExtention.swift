//
//  Orders+TableExtention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import UIKit

extension OrderViewController: UITableViewDelegate, UITableViewDataSource {
    
    // handel table view delegate&datasours
    func TableViewDelegateAndDataSource() {
        ordersTableView.delegate = self
        ordersTableView.dataSource = self
    }
    
    // register Cells
    func registerTableViewCell() {
        ordersTableView.register(UINib(nibName: constant.pending_orders, bundle: nil), forCellReuseIdentifier: constant.pending_orders)
        ordersTableView.register(UINib(nibName: constant.active_oreders, bundle: nil), forCellReuseIdentifier: constant.active_oreders)
        ordersTableView.register(UINib(nibName: constant.expired_orders, bundle: nil), forCellReuseIdentifier: constant.expired_orders)
    }
    
    // handel table view style
    func tableViewStyle() {
        ordersTableView.separatorStyle = .none
    }
    
    // MARK: - Number OF Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        if myCell == constant.active {
            return presenter.activeCellCounter()
        } else if myCell == constant.expired {
            return presenter.expiredCellCounter()
        } else if myCell == constant.pending {
            return presenter.pendingCellCounter()
        }
        return 0
    }
    
    // MARK: - Number OF Rows
    func tableView(_ tableView: UITableView,  numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // MARK: - Cell For Row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if myCell == constant.expired {
            return presenter.setExpiredCell(tableView: tableView, atIndexPath: indexPath)
        }
        else if myCell == constant.active {
            return presenter.setActiveCell(tableView: tableView, atIndexPath: indexPath)
        }
        return presenter.setPendingCell(tableView: tableView, atIndexPath: indexPath)
    }
    // MARK: - Did Select Row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = Bill()
        self.navigationController?.pushViewController(VC, animated: true)
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
    
    
    // MARK: - Hight For Header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    // MARK: - Hight For Row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if myCell == "active" {
            return 128
        } else if myCell == constant.expired {
            return 96
        } else if myCell == constant.pending {
            return 168
        }
        return 0
    }
    
    
}
