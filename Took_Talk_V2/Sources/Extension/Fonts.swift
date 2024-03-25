//
//  Fonts.swift
//  Took_Talk
//
//  Created by 최시훈 on 2024/03/24.
//

import SwiftUI

extension Font {
    
    static func pretendard(
            size: CGFloat = 1,
            weight: PretendardWeight = .regular
        ) -> Font {
            let fontName = "Pretendard-\(weight.rawValue)"
            return Font.custom(fontName, size: size)
        }
}

extension Font {
    
    static func pretendard(
        size: CGFloat = 1,
        weight: PretendardWeight = .regular
    ) -> UIFont {
        let fontName = "Pretendard-\(weight.rawValue)"
        guard let uiFont = UIFont(name: fontName, size: size) else {
            fatalError("Failed to load font named \(fontName)")
        }
        return uiFont
    }
}

enum PretendardWeight: String {
    
    case thin = "Thin"
    case light = "Light"
    case medium = "Medium"
    case regular = "Regular"
    case semibold = "SemiBold"
    case bold = "Bold"
}

struct SampleView: View {
    
    var body: some View {
        Text("Hello, world")
            .font(.pretendard(size: 10))
    }
}
