//
//  AnimationMode.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/20/23.
//

import Foundation

enum AnimationMode: Int, CaseIterable {
    case male
    case female

    var imageName: String {
        switch self {
        case .male:
            return "person.fill"
        case .female:
            return "person.fill"
        }
    }
    var title: String {
        switch self {
        case .male:
            return "male"
        case .female:
            return "female"
        }
        
    }
}
