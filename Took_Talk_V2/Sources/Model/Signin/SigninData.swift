//
//  Signin.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation

struct SigninData: Decodable {
    let status: Int
    let data: SigninDatas
}

struct SigninDatas: Decodable {
    let grantType: String
    let accessToken: String
    let refreshToken: String
}

