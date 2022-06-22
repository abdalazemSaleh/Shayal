//
//  Home.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-04.
//

import UIKit
import MapKit

class Home: UIViewController {

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
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        handelView()
    }
    // MARK: - Handel View
    func handelView() {
        // handel corner view
        cornerView.layer.cornerRadius = 4
        cornerView.addShadow()
        // handel offer view
        offerView.layer.cornerRadius = 4
        offerView.addShadow()
    }
}
