//
//  FirebaseidToken.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/29/24.
//

import Foundation

enum FirebaseidToken {
    case verificationID
}
class FirebaseidTokenManager {
    static func save(_ tokenType: FirebaseidToken, _ value: String) {
        UserDefaults.standard.set(value, forKey: String(describing: tokenType))
    }
    
    static func get(_ tokenType: FirebaseidToken) -> String? {
        return UserDefaults.standard.string(forKey: String(describing: tokenType))
    }
    
    static func remove(_ tokenType: FirebaseidToken) {
        UserDefaults.standard.removeObject(forKey: String(describing: tokenType))
    }
    
}
