//
//  SigninViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import SwiftUI
import Alamofire

class SigninViewModel: ObservableObject {
    @Published var number: String = ""
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
        let parameters: [String: Any] = [
            "number": number,
            "password": password
        ]
        print(parameters)
        let headers: HTTPHeaders = [
            "cache-control": "no-cache,no-store,max-age=0,must-revalidate",
                "connection": "keep-alive",
                "content-type": "application/json",
                "date": "Sat, 30 Mar 2024 17:31:13 GMT",
                "expires": "0",
                "keep-alive": "timeout=60",
                "pragma": "no-cache",
                "transfer-encoding": "Identity",
                "vary": "Origin,Access-Control-Request-Method,Access-Control-Request-Headers",
                "x-content-type-options": "nosniff",
                "x-frame-options": "DENY",
                "x-xss-protection": "0"
        ]
        AF.request("\(api)auth/signin",
                       method: .post,
                       parameters: parameters,
                       encoding: JSONEncoding.default,
                       headers: headers)
            .validate()
        .responseDecodable(of: SigninData.self) { response in
            switch response.result {
            case .success(let value):
                print("로그인 성공")
                self.isMainTabViewActive = true
            case .failure(let error):
                print("/auth/signin", error.responseCode, error.localizedDescription)
            }
        }
    }
}
