//
//  EditProfileViewModel.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/11/24.
//

import SwiftUI
import Alamofire

class EditProfileViewModel: ObservableObject {
    @Published var isPressed = false
    @Published var nickname = "알파 메일 최시훈"
    @Published var mbti = "ESTP"
    @Published var interests = ["알파", "메일", "최시훈"]
    @Published var bio = "알파 메일 최시훈 한잔해~"
    
    func editProfileSave() {
        AF.request("\(api)auth/userfix",
                   method: .put,
                   encoding: JSONEncoding.default,
                   headers: [
                    "Authorization": "\(TokenManager.get(.grantType)!) \(TokenManager.get(.accessToken)!)"
                   ]
        )
        .validate()
        .responseDecodable(of: ProfileModel.self) { response in
            switch response.result {
            case.success(let value):
                self.nickname = value.nickname
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
