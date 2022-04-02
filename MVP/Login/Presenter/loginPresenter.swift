//
//  loginPresenter.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-01.
//

import Foundation

// MARK: - Protocol
protocol LoginView: AnyObject {
    func showError(message: String)
}
// MARK: Presnter
class LoginPresenter {
    // about init & delegation
    private weak var view: LoginView?
    init(view: LoginView) {
        self.view = view
    }
    // my code
    func login(phone: String, password: String) {
        if phone.isEmpty {
            view?.showError(message: "Phone is not valid")
        }
        if password.isEmpty{
            view?.showError(message: "password is not valid")
        }
    }
}
