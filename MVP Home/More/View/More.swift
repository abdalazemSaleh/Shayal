//
//  More.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

class More: UIViewController {
    var nameArr = [String]()
    // MARK: - Variables
    var presenter: MorePresenter!
    // MARK: - IBOutlet
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var myTable: UITableView!
    // MARK: - IBAction
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MorePresenter(view: self)
        handelTableView()
    }
}
