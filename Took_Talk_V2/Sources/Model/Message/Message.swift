//
//  Message.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/31/24.
//

import Foundation

struct Message: Decodable, Identifiable, Equatable {
    var id = UUID()
    let userUid: String
    let text: String
    let profileImageURL: String
    let createdAt: Date
    
    func isFromCurrentUser() -> Bool {
        return true
    }
    
}
