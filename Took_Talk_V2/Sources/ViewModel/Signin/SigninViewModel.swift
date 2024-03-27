//
//  SigninViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation

class SigninViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var password: String = ""
    @Published var isPresented: Bool = false
    @Published var isSuccess: Bool = false
    @Published var isSignupViewActive: Bool = false
    @Published var isFindPasswordViewActive: Bool = false
    @Published var isMainTabViewActive: Bool = false
    
    func signup() {
        isSignupViewActive = true
    }
    func login() {
        //        FirebaseAuth.Auth.auth().signIn(withEmail: id, password: password) { [weak self] user, error in
        //                    guard let self = self else { return }
        //
        
        //                    if let error = error, user == nil { // 에러가 나거나 유저가 없을경우
        //                        print("실패")
        //                            //얼럿 띄우기
        //                    } else {
        //             성공이면 화면전환하고 프로필 가져오기
        isMainTabViewActive = true
        //                            }
        //                }
    }
}
