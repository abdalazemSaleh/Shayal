//
//  Constant.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-05-22.
//

import Foundation
import UIKit
class Constant {
    // Handel Attributes used in:- forgetPassword, enterCode
     let attributes = [
        NSAttributedString.Key.foregroundColor : UIColor.white ,
        NSAttributedString.Key.font : UIFont(name: "Almarai-Bold", size: 12)!
    ]
    // Handel Color Name
    let set_orginalColerToView = "TF"
    let set_selectedTextFielddColorToView = "First"
    let set_wrongPasswordColorToView = "checkTF"
    // Notification
    let notificationCell = "NotificationCell"
    // Orders
    let pending_orders = "PendingOrders"
    let active_oreders = "ActiveOrders"
    let expired_orders = "ExpiredOrders"
}

