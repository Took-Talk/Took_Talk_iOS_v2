//
//  SignupData.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation
import Alamofire

struct SignupData: Codable {
    let success: Bool
    let message: String
    let data: SignupDatas
}
struct SignupDatas: Codable {
    let type: String
    let token: String
    let id: Int
    let number: String
    let password: String
    let roles: [String]
}
