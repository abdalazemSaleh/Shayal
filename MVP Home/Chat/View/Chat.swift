//
//  Chat.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-06.
//

import UIKit

class Chat: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var chatTableView: UITableView!
    
    // MARK: - IBAction

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabelView()
    }
    


}
