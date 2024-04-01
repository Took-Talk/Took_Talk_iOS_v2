//
//  Notification.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/30/24.
//

import Foundation

extension Notification.Name {
    static let phoneNumberVerified = Notification.Name("PhoneNumberVerified")
    static let phoneNumberDidChange = Notification.Name("PhoneNumberDidChange")
    
    static let passwordCheck = Notification.Name("PasswordCheck")
    static let passwordDidChange = Notification.Name("PasswordDidChange")
    
    static let nicknameCheck = Notification.Name("PasswordCheck")
    static let nicknameDidChange = Notification.Name("NicknameDidChange")
    
    static let genderDidChange = Notification.Name("GenderDidChange")
    static let ageDidChange = Notification.Name("AgeDidChange")
    static let mbtiDidChange = Notification.Name("MBTIDidChange")
    static let interestsDidChange = Notification.Name("InterestsDidChange")
    static let bioDidChange = Notification.Name("BioDidChange")
}

extension Notification.Name {
    static let signupSuccess = Notification.Name("SignupSuccess")
}
