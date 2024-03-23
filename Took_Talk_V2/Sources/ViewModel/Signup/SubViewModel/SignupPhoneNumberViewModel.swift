//
//  SignupPhoneNumberViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

class SignupPhoneNumberViewModel: ObservableObject {
    @Published var phoneNumber: String = ""
    @Published var certificationNumber: String = ""
    @Published var certificationNumberField = false
        
    
    
    func number() {
        print("asdf")
    }
}
