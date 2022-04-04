//
//  File.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-03.
//

import Foundation


// MARK: - Profile Data
struct profileData: Codable {
    let status: Bool
    let data: thisData?
    let message: String?
}

// MARK: - DataClass
struct thisData: Codable {
    let name: String?
    let email: String?
    let phone: String?
    let image: String?
    let token: String?
    let balance: Double?
    let bank_name: String?
    let acc_number: String?
    let code: Int?
}

