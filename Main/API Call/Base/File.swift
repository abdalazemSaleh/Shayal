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
    let id: Int?
    let name: String?
    let email: String?
    let phone: String?
    let image: String?
    let token: String?
    let type: String?
    let is_provider: Bool?
}

