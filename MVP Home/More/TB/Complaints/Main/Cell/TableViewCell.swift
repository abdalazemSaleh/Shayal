//
//  TableViewCell.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var complaintsView: UIView!
    @IBOutlet var complaintsLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
