//
//  UserInfo.swift
//  climate
//
//  Created by 李昌昊 on 2022/12/5.
//

import Foundation

struct UserInfo: Hashable, Codable{
    var attributes: [Attribute]?
    
}

struct Attribute:  Hashable, Codable {
    var name: String?
    var values: [String]?
}

