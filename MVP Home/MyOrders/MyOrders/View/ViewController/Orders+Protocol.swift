//
//  Orders+Protocol.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import UIKit

extension OrderViewController: OrdersView{
    func relodTableView() {
        print("Relode done")
        ordersTableView.reloadData()
    }
}



