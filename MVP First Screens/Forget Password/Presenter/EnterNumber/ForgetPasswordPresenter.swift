//
//  ForgetPasswordPresenter.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//

import Foundation

protocol ForgetPasswordVeiw: AnyObject {
    func showError(message: String)
}

class ForgetPasswordPresenter {
    // about init & delegation
    private weak var view: ForgetPasswordVeiw?
    init(view: ForgetPasswordVeiw){
        self.view = view
    }
    // my code
    func next(phone: String) {
        if phone.isEmpty{
            view?.showError(message: "Phone is not valid")
        }
    }
}
