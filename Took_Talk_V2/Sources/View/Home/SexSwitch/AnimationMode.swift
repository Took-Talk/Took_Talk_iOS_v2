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
            return "person.fill" // SF Symbol name for disabled mode
        case .female:
            return "person.fill" // SF Symbol name for reduced mode
        }
    }
    var title: String {
        switch self {
        case .male:
            return "male" // Title for disabled mode
        case .female:
            return "female" // Title for reduced mode
        }
        
    }
}
