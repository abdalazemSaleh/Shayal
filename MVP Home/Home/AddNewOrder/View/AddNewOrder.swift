//
//  AddNewOrder.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-16.
//

import UIKit

class AddNewOrder: UIViewController {
    
    // MARK: - Variables
    let constant = Constant()
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add New Order"
        handelButton()
        TextFieldDelegate()
        addImageToTextField()
        handelCouponTextField()
    }
    // MARK: - IBOutlet
    @IBOutlet var send: UIButton!
    // from
    @IBOutlet var fromView: UIView!
    @IBOutlet var fromTF: UITextField!
    //to
    @IBOutlet var toView: UIView!
    @IBOutlet var toTF: UITextField!
    // payload type
    @IBOutlet var payloadView: UIView!
    @IBOutlet var payloadTF: UITextField!
    // vehicle model
    @IBOutlet var vehicleModelView: UIView!
    @IBOutlet var vehicleModelTF: UITextField!
    // weight
    @IBOutlet var weightView: UIView!
    @IBOutlet var weightTF: UITextField!
    // vehicle type
    @IBOutlet var vehicleTypeView: UIView!
    @IBOutlet var vehicleTypeTF: UITextField!
    // coupon
    @IBOutlet var couponTF: UITextField!

    // MARK: - IBAction
    @IBAction func send(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    // MARK: - Handel View
    // handel Button
    func handelButton() {
        send.layer.masksToBounds = true
        send.layer.cornerRadius = 24
        send.HandelButtonGradient()
    }
}
