//
//  ActiveOrders.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-09.
//

import UIKit

class ActiveOrders: TableViewCell {

    @IBOutlet var view: UIView!
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
    }
    
}
