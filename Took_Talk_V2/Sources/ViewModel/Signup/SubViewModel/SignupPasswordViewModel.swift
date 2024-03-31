//
//  SignupPasswordViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import SwiftUI
import Alamofire

class SignupPasswordViewModel: ObservableObject {
    @Published var isSamePassword: Bool = false {
        didSet {
            NotificationCenter.default.post(name: .passwordCheck, object: nil)
        }
    }
    
    @Published var password: String = "" {
        didSet {
            NotificationCenter.default.post(name: .passwordDidChange, object: password)
        }
    }
    
    @Published var passwordCheck = "" {
        didSet {
            onPasswordChange()
        }
    }
    
    func onPasswordChange() {
        if password == passwordCheck {
            self.isSamePassword = true
        }
    }
}
