//
//  ProfileModel.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/27/24.
//

import Foundation

struct ProfileModel: Codable {
    let id: Int
    let number: String
    let password: String
    let nickname: String
    let age: String
    let gender: String
    let mbti: String
    let interests: [String]
    let bio: String
    let createdAt: String?
    let roles: [UserRole]
}

struct UserRole: Codable {
    
}
