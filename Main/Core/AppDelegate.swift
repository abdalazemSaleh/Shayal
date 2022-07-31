//
//  AppDelegate.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-03-27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application( _ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application( _ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return false
    }


}

