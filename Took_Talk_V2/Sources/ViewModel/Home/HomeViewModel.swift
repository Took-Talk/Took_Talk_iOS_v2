//
//  HomeViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var mbti = "ESTP"
    @Published var setAge: Int = 15
    @Published var isWaitingViewActive: Bool = false
    @Published var isCustomBackButtonHidden: Bool = true
    @Published var isMatchingViewActive: Bool = false
    @Published var isChatViewActive: Bool = false

    func navigationChatView() {
        self.isChatViewActive = true
    }
}
