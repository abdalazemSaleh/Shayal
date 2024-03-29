//
//  OrdersPresenter.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import Foundation
import UIKit
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
            view?.relodTableView()
        case .active:
            view?.relodTableView()
        case .pending:
            view?.relodTableView()
        }
    }
}
