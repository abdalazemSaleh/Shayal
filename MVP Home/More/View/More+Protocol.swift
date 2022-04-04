//
//  More+Protocol.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-05.
//

import UIKit

extension More: MoreView {
    func getUserName(name: [String]) {
        nameArr = name
        print("nameArr: \(nameArr)")
    }
    
    func getUserImage(image: [UIImage]) {
        return
    }
    
    
}
