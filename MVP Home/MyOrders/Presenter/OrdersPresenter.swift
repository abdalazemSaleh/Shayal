//
//  OrdersPresenter.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import Foundation
// MARK: - Protocol
protocol OrdersView: AnyObject {
    func relodTableView()
}
// MARK: Presnter
class OrdersPresenter {
    // MARK: - About init & delegation
    private weak var view: OrdersView?
    init(view: OrdersView) {
        self.view = view
    }
    
    // MARK: - My Code
    enum checkSegment {
        case expired
        case active
        case pending
    }
    func handelSegment(status: checkSegment) {
        switch status {
        case .expired:
            print("Expired")
            view?.relodTableView()
        case .active:
            print("Active")
            view?.relodTableView()
        case .pending:
            print("Pending")
            view?.relodTableView()
        }
    }
    
}
