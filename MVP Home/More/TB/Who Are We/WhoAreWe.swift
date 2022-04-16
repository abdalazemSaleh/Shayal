//
//  WhoAreWe.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-06.
//

import UIKit

class WhoAreWe: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet var whoAreWeTV: UITextView!
        
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Who Are We"
    }
}
