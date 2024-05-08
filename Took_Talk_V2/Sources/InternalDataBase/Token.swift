//
//  Token.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/18/23.
//

import Foundation

enum TokenType {
    case grantType
    case accessToken
}

class TokenManager {
    static func save(_ tokenType: TokenType, _ value: String) {
        UserDefaults.standard.set(value, forKey: String(describing: tokenType))
    }
    
    static func get(_ tokenType: TokenType) -> String? {
        return UserDefaults.standard.string(forKey: String(describing: tokenType))
    }
    
    static func remove(_ tokenType: TokenType) {
        UserDefaults.standard.removeObject(forKey: String(describing: tokenType))
    }
    
}
