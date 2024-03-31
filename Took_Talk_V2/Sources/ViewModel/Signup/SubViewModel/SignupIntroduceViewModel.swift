//
//  SignupIntroduceViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

class SignupIntroduceViewModel: ObservableObject {
    @Published var bio: String = "" {
        didSet {
            NotificationCenter.default.post(name: .bioDidChange, object: bio)
        }
    }
}
