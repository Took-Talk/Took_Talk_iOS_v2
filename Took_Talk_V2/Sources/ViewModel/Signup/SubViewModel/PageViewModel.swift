//
//  PageViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI
import Alamofire

class PageViewModel: ObservableObject {
    @Published var isCertificate = false
    @Published var isSamePassword = false
    @Published var number = "3"
    @Published var password: String = "3"
    @Published var nickname: String = "최시훈"
    @Published var gender: String = "남"
    @Published var age: String = "19"
    @Published var mbti: String = "ESTP"
    @Published var interests = ["알파", "메일", "최시훈"]
    @Published var bio: String = "자기소개"
    @Published var progress: Int = 1 {
        didSet {
            if progress > 6 {
                progress = 6
            }
        }
    }
    @Published var cucces = false
    
    func next() {
        let newProgress = self.progress + 1
        switch newProgress {
        case 2:
//            if self.isCertificate {
                self.progress = newProgress
//                print("PageViewModel.next() 전화번호 인증 되었습니다", self.isCertificate)
//            } else {
//                print("PageViewModel.next() 전화번호 인증하세요", self.isCertificate)
//            }
        case 3:
//            if isSamePassword {
//                if isValidPassword(password) {
                    self.progress = newProgress
//                } else {
//                    print("PageViewModel.next() isValidPassword")
//                }
//            } else {
//                print("PageViewModel.next() isSamePassword 비밀번호가 일치하지 않습니다", password)
//            }
        case 4:
//            if nickname.isEmpty || gender.isEmpty || age.isEmpty {
//                if nickname.isEmpty {
//                    print("nickname이 비어 있습니다.")
//                }
//                if gender.isEmpty {
//                    print("gender가 비어 있습니다.")
//                }
//                if age.isEmpty {
//                    print("age가 비어 있습니다.")
//                }
//            } else {
                self.progress = newProgress
//            }
        case 5:
//            if interests.isEmpty {
//                print("관심사를 최소 3개 입력해주세요")
//            } else {
//                print(interests)
                self.progress = newProgress
//            }
        case 6:
//            if mbti.isEmpty {
//                print("mbti가 선택되지 않았습니다")
//            } else {
            self.progress = newProgress
//            }
        default:
//            if bio.isEmpty {
//                print("자기소개가 비어있습니다")
//            } else {
            let parameters: [String: Any] = ["number": number,
                              "password": password,
                              "nickname": nickname,
                              "gender": gender,
                              "age": age,
                              "mbti": mbti,
                              "interests": interests,
                              "bio": bio]
            print(parameters)
            let headers: HTTPHeaders = [
                "cache-control": "no-cache,no-store,max-age=0,must-revalidate",
                "connection": "keep-alive",
                "content-type": "application/json",
                "date": "Sat, 30 Mar 2024 17:24:33 GMT",
                "expires": "0",
                "keep-alive": "timeout=60",
                "pragma": "no-cache",
                "transfer-encoding": "Identity",
                "vary": "Origin,Access-Control-Request-Method,Access-Control-Request-Headers",
                "x-content-type-options": "nosniff",
                "x-frame-options": "DENY",
                "x-xss-protection": "0"
            ]
//                AF.request("\(api)auth/signup",
//                           method: .post,
//                           parameters: parameters,
//                           encoding: JSONEncoding.default,
//                           headers: headers)
//                .validate()
//                .responseDecodable(of: SignupData.self) { response in
//                    switch response.result {
//                    case .success:
//                        print("✨회원가입 성공✨")
            NotificationCenter.default.post(name: .signupSuccess, object: nil)
//                        print(response)
//                    case .failure(let error):
//                        print("🚫error /auth/signup", "0", error, "1", error.responseCode,
//                            "2", error.localizedDescription)
//                    }
//                }
//            }
        }
    }
    
    func back() {
        if progress <= 1 {
            NotificationCenter.default.post(name: .signupSuccess, object: nil)
        } else {
            progress -= 1

        }
    }
    
//    func isValidPassword(_ password: String) -> Bool {
//        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*\\W)[A-Za-z\\d\\W]{8,}$"
//        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
//        let isValid = passwordTest.evaluate(with: password)
//        print("Password: \(password) - Valid: \(isValid)")
//        return isValid
//    }
}
