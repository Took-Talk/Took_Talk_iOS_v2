//
//  SignupPhoneNumberViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI
import FirebaseAuth

class SignupPhoneNumberViewModel: ObservableObject {
    @Published var phoneNumber: String = "+1 650-555-3434"
    @Published var certificationNumber: String = "654321"
    @Published var certificationNumberField: Bool = false
    @Published var isCertificate: Bool = false
    @Published var progress: Int = 0
    @Published var timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    @Published var percentage: CGFloat = 1.0
    
    func phoneCertification() {
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
            if let error = error {
                print("⚠️error) phoneCertification.1", error.localizedDescription)
                return
            }
            if verificationID != nil {
                self.isCertificate = true
                print("Cusses phoneCertification", self.isCertificate)
            }
        }
    }
}
