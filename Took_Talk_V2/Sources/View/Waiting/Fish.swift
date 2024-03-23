//
//  Fish.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import Foundation

struct Fish: Identifiable {
    let id = UUID()
    let imageName: String
    var position: CGPoint
    var size: CGFloat
}
