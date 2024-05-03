//
//  RoomId.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/17/24.
//

import Foundation

struct RoomInfo: Codable {
    let roomId: Int
    let userInfo: UserInfo
    let matching: Bool
}
