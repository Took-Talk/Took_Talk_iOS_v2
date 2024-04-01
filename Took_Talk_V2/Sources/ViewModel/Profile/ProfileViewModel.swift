//
//  ProfileViewModel.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/28/24.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var isPressed: Bool = false
    @Published var number = "3"
    @Published var nickname: String = "알파 메일 최시훈"
    @Published var gender: String = "남"
    @Published var age: String = "19"
    @Published var mbti: String = "ESTP"
    @Published var interests = ["알파", "메일", "최시훈"]
    @Published var bio: String = "자기소개"
}
