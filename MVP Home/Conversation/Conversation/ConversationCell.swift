//
//  ChatCell.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-06.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet var myView: UIView!
    @IBOutlet var userNamer: UILabel!
    @IBOutlet var chatDetails: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
