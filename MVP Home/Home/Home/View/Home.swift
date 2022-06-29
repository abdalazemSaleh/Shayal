//
//  Home.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit
import MapKit

class Home: UIViewController {

    // MARK: - Variables
    let constant = Constant()
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelCornerView()
        handel_offerView()
    }
    
    // MARK: - IBOutlet
    @IBOutlet var offerTV: UITextView!
    @IBOutlet var map: MKMapView!
    @IBOutlet var cornerView: UIView!
    @IBOutlet var offerView: UIView!
    
    // MARK: - IBAction
    @IBAction func add(_ sender: UIButton) {
        let VC = AddNewOrder()
        navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func notification(_ sender: UIButton) {
        let VC = Notification()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    // MARK: - Handel View
    func handelCornerView() {
        // handel corner view
        cornerView.layer.cornerRadius = 4
        cornerView.addShadow()
    }
    
    // Handel offer View
    func handel_offerView() {
        offerView.layer.cornerRadius = 4
        offerView.addShadow()
    }
}
