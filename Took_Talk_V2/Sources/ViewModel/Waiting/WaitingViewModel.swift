//
//  WaitingViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI

class WaitingViewModel: ObservableObject {
    @Published var imageData: Data? = nil

    //    @Published var setAge: Int = 15
    //    @Published var isWaitingViewActive: Bool = false
    //    @Published var isCustomBackButtonHidden = true
    
    func routeToWaitingView() {
        // WaitingView로 이동
    }
    func loadData() {
            let task = URLSession.shared.dataTask(
                with: URL(string: "https://tooktalkbucket.s3.ap-northeast-2.amazonaws.com/KakaoTalk_Photo_2024-04-01-14-38-11.gif")!
            ) { data, response, error in
                self.imageData = data
            }
            task.resume()
        }
}
