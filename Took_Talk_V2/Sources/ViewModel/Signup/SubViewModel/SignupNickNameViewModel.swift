//
//  SignupNickNameViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 24/03/07.
//

import SwiftUI
import Alamofire

class SignupNickNameViewModel: ObservableObject {
    @Published var nickname: String = "" {
        didSet {
            NotificationCenter.default.post(name: .nicknameDidChange, object: nickname)
        }
    }
    
    @Published var age: String = "" {
        didSet {
            NotificationCenter.default.post(name: .ageDidChange, object: age)
        }
    }
    @Published var gender: String = "" {
        didSet {
            NotificationCenter.default.post(name: .genderDidChange, object: gender)
        }
    }
    @Published var isBoySelected = false
    @Published var isGirlSelected = false
    
    func selectBoy() {
        gender = "남"
        isBoySelected.toggle()
        isGirlSelected = false
    }
    
    func selectGirl() {
        gender = "여"
        isGirlSelected.toggle()
        isBoySelected = false
    }
    
    func onNickNameChange() {
        NotificationCenter.default.post(name: .nicknameDidChange, object: nickname)
        NotificationCenter.default.post(name: .ageDidChange, object: age)
        NotificationCenter.default.post(name: .genderDidChange, object: gender)
    }
    
}
