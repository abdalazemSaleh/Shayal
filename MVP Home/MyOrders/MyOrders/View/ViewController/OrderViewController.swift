//
//  OrderViewController.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-07.
//

import UIKit

class OrderViewController: UIViewController {
    // MARK: - Variables
    var presenter: OrdersPresenter!
    let constant = Constant()
    var myCell = "pending"
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = OrdersPresenter(view: self)
        handelSegmentViewCornerRadius()
        TableViewDelegateAndDataSource()
        registerTableViewCell()
        tableViewStyle()
    }
    // MARK: - IBOutlet
    @IBOutlet var mySegment: UISegmentedControl!
    @IBOutlet var ordersTableView: UITableView!
    func relodTble() {
        ordersTableView.reloadData()
    }
    // MARK: - IBaction
    @IBAction func mySegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            sendAlertToPresenterCasePending()
        }
        else if sender.selectedSegmentIndex == 1 {
            sendAlertToPresenterCaseActive()
        }
        else if sender.selectedSegmentIndex == 2 {
            sendAlertToPresenterCaseExpired()
        }
    }
    // handel segament
    func sendAlertToPresenterCasePending() {
        myCell = constant.pending
        presenter.handelSegment(status: .pending)
    }
    func sendAlertToPresenterCaseActive() {
        myCell = constant.active
        presenter.handelSegment(status: .active)
    }
    func sendAlertToPresenterCaseExpired() {
        myCell = constant.expired
        presenter.handelSegment(status: .expired)
    }

    // MARK: - Handel View
    func handelSegmentViewCornerRadius() {
        mySegment.layer.cornerRadius = 24
        mySegment.layer.masksToBounds = true
        mySegment.backgroundColor = UIColor.white
    }
}
