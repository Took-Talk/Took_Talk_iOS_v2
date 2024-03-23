//
//  SignupNicNameViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 24/03/07.
//

import SwiftUI
import Alamofire

class SignupNicNameViewModel: ObservableObject {
    @Published var nicname = ""
    @Published var age = ""
    @Published var sex = ""
    @Published var isBoySelected = false
    @Published var isGirlSelected = false
    
    func selectBoy() {
        isBoySelected.toggle()
        isGirlSelected = false
    }
    
    func selectGirl() {
        isGirlSelected.toggle()
        isBoySelected = false
    }
}
