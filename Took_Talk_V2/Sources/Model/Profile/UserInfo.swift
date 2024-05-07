//
//  UserInfo.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/27/24.
//

import Foundation

struct UserInfo: Codable {
    let id: Int
    let number: String
    let password: String?
    let nickname: String
    let age: String
    let gender: String
    let mbti: String
    let interests: [String]
    let imgUrl: String?
    let bio: String?
    let createdAt: String?
    let status: Int
    let roles: [UserRole]?
}

struct UserRole: Codable {
    let id: Int
    let user: String
    let role: Role
}

struct Role: Codable {
    let id: Int
    let name: String
    let description: String
}
