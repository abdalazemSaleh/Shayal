//
//  MoreCell.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

class MoreCell: UITableViewCell {

    @IBOutlet var cellView: UIView!
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.layer.cornerRadius = 4
        cellView.layer.borderWidth = 1
        cellView.layer.borderColor = UIColor(named: "First")?.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
