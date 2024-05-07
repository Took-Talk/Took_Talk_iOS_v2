//
//  SignupData.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation
import Alamofire

struct SignupData: Codable {
    var number: String
    var password: String
    var nickname: String
    var gender: String
    var age: String
    var mbti: String
    var interests: [String]
    var bio: String
    var imgUrl: String
}
