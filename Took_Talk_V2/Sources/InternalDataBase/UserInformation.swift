//
//  UserInformation.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/27/24.
//

import Foundation

enum UserInformationType {
    case number
    case password
    case nickname
    case gender
    case age
    case mbti
    case interests
    case bio
    case imgUrl
}

class UserInformationManager {
    static func save<T>(_ userInformationType: UserInformationType, _ value: T) {
        UserDefaults.standard.set(value, forKey: String(describing: userInformationType))
    }
    
    static func get<T>(_ userInformationType: UserInformationType) -> T? {
        return UserDefaults.standard.value(forKey: String(describing: userInformationType)) as? T
    }
    
    static func remove(_ userInformationType: UserInformationType) {
        UserDefaults.standard.removeObject(forKey: String(describing: userInformationType))
    }
}
