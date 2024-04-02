//
//  SigninData.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation

struct SigninData: Codable {
    let type: String
    let token: String
    let id: Int
    let number: String
    let password: String
    let roles: [String]
}
