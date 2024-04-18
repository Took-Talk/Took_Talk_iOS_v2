//
//  SigninViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import SwiftUI
import Alamofire

class SigninViewModel: ObservableObject {
    @Published var number: String = "3"
    @Published var password: String = "3"
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
        let startTime = DispatchTime.now()

        AF.request("\(api)auth/signin",
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: ["content-type": "application/json", "accept": "*/*"]
        )
        .validate()
        .responseDecodable(of: SigninData.self) { response in
            let endTime = DispatchTime.now()
            let nanoTime = endTime.uptimeNanoseconds - startTime.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000
            print("Request took \(timeInterval) seconds")

            switch response.result {
            case .success(let value):
                TokenManager.save(.grantType, value.type)
                TokenManager.save(.accessToken, value.token)
                print("token: \n", value.type, value.token)
                self.isMainTabViewActive = true
            case .failure(let error):
                print("/auth/signin", error.responseCode as Any, error.localizedDescription)
            }
        }

    }
}
