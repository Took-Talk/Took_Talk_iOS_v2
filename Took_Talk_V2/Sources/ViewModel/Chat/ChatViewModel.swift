//
//  ChatViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI

class ChatViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    
    @Published var text = ""
    @Published var profileImageURL = ""
    @Published var number = ""
    @Published var name = "알파메일최시훈"
    @Published var bio = "알파메일최시훈알파메일최시훈알파메일최시훈"
    @Published var mbti = "ESTP"
    @Published var mockData = [Message]()
    @Published var roundedCorners: UIRectCorner = [.topLeft, .bottomLeft]
    @Published var isUidSame: Bool = false
    @State var scrollProxy: ScrollViewProxy? = nil

    //    init(messages: [Message] = [Message](), text: String = "",
    // profileImageURL: String = "", number: String = "") {
    //        self.messages = messages
    //        self.text = text
    //        self.profileImageURL = profileImageURL
    //        self.number = number
    //    }
    
    func photoButton() {
        print("photoButton")
        
    }
    func reciveMessage() {
        
    }
    
    func sendMessage() {
        if !text.isEmpty {
            let newMessage = Message(
                userUid: number,
                text: text,
                profileImageURL: profileImageURL,
                createdAt: Date()
            )
            
            self.text = ""
//            isUidSame = true
            mockData.append(newMessage)
        }
    }
}
