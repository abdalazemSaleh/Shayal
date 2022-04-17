//
//  Bill+Extention.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-18.
//

import UIKit


extension Bill: paymentPr {
    func payment() {
        let VC = Rate()
        VC.modalPresentationStyle = .overFullScreen
        self.present(VC, animated: true, completion: nil)
    }
}
