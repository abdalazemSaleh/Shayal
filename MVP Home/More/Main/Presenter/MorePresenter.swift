//
//  MorePresenter.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit

protocol MoreView: AnyObject {
}

class MorePresenter {
    // about init & delegation
    private weak var view: MoreView?
    init(view: MoreView) {
        self.view = view
    }
    // my code
    let nameArr = ["Complaints", "Contact With US", "Who Are We", "Terms And Codition", "Language"]
    let imageArr = [UIImage(named: "complaints"), UIImage(named: "ContactWithUs"), UIImage(named: "WhoAreWe"), UIImage(named: "TermsandConditions"), UIImage(named: "Language")]
    // Count Table View Rows
    func getCounter() -> Int {
        return nameArr.count
    }
}
