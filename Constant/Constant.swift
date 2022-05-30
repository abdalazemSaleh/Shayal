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
    let textFeildColor = "TF"
    let textFeildView = "First"
    let wrongPsColor = "checkTF"
    // Notification
    let notificationCell = "NotificationCell"
    // Orders
    let pending = "PendingOrders"
    let active = "ActiveOrders"
    let expired = "ExpiredOrders"
    
}

