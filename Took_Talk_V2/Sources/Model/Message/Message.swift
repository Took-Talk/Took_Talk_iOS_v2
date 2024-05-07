//
//  Message.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/31/24.
//

import Foundation

struct Message: Identifiable, Equatable {
    var id = UUID()
    let text: String
//    let profileImageURL: String
//    let createdAt: Date
    
    init(text: String) {
        self.text = text
    }
    
    func isFromCurrentUser() -> Bool {
        return true
    }
    
}
