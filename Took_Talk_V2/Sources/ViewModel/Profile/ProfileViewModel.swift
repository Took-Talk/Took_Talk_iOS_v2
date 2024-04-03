//
//  ProfileViewModel.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/28/24.
//

import SwiftUI
import Alamofire

class ProfileViewModel: ObservableObject {
    @Published var isPressed: Bool = false
    @Published var number = "3"
    @Published var nickname: String = "알파 메일 최시훈"
    @Published var gender: String = "남"
    @Published var age: String = "19"
    @Published var mbti: String = "ESTP"
    @Published var interests = ["알파", "메일", "최시훈"]
    @Published var bio: String = "자기소개"
    
    func getUserInfo() {
        AF.request("\(api)auth/userinfo",
                   method: .get,
                   encoding: JSONEncoding.default,
                   headers: [
                    "Authorization": "\(TokenManager.get(.grantType)!) \(TokenManager.get(.accessToken)!)"
                   ]
        )
        .validate()
        .responseDecodable(of: ProfileModel.self) { response in
            switch response.result {
            case.success(let value):
                self.number = value.number
                self.nickname = value.nickname
                self.gender = value.gender
                self.age = value.age
                self.mbti = value.mbti
                self.interests = value.interests
                self.bio = value.bio
            case .failure(let error):
                print(error)
                print("로그인 다시하셈 ㅅㄱ\(error._code) \(error.localizedDescription)")
                
            }
        }
    }
}
