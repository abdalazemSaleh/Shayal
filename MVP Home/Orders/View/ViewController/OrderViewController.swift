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
    var myCell = "pending"
    // MARK: - IBOutlet
    @IBOutlet var mySegment: UISegmentedControl!
    @IBOutlet var ordersTableView: UITableView!
    func relodTble() {
        ordersTableView.reloadData()
    }
    // MARK: - IBaction
    @IBAction func mySegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myCell = "pending"
            presenter.handelSegment(status: .pending)
        }
        else if sender.selectedSegmentIndex == 1 {
            myCell = "active"
            presenter.handelSegment(status: .active)
        }
        else if sender.selectedSegmentIndex == 2 {
            myCell = "expired"
            presenter.handelSegment(status: .expired)
        }
    }
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = OrdersPresenter(view: self)
        handelView()
        handelTbaleView()
    }
    // MARK: - Handel View
    func handelView() {
        mySegment.layer.cornerRadius = 24
        mySegment.layer.masksToBounds = true
        mySegment.backgroundColor = UIColor.white
    }
    
}
