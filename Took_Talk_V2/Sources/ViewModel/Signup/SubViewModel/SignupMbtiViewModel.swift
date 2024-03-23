//
//  SignupMbtiViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

class SignupMbtiViewModel: ObservableObject {
    @Published var mbti: String = "ISTJ"
    @Published var certificationNumber: String = ""
    func number() {
        print("asdf")
    }
}
