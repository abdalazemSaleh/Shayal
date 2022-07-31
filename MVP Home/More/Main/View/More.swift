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
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MorePresenter(view: self)
        handelTableView()
        handelImageClick()
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
    }
    // MARK: - IBOutlet
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var myTable: UITableView!
    // MARK: - IBAction
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let newVC = UserProfile()
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    // MARK: - Handel Image Clic
    func handelImageClick() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        userImage.isUserInteractionEnabled = true
        userImage.addGestureRecognizer(tapGestureRecognizer)
    }
}
