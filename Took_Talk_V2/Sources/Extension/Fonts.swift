//
//  Fonts.swift
//  Took_Talk
//
//  Created by 최시훈 on 2024/03/24.
//

import SwiftUI

extension Font {
    
    static func pretendard(
        _ size: CGFloat = 1,
        weight: PretendardWeight = .regular
    ) -> Font {
        let fontName = "Pretendard-\(weight.rawValue)"
        return Font.custom(fontName, size: size)
    }
    
    static func pretendardUIFont(
        _ size: CGFloat = 1,
        weight: PretendardWeight = .regular
    ) -> UIFont {
        let fontName = "Pretendard-\(weight.rawValue)"
        
        // Attempt to load the font directly using the font's file name
        if let fontURL = Bundle.main.url(forResource: fontName, withExtension: "otf"),
           let fontData = try? Data(contentsOf: fontURL),
           let provider = CGDataProvider(data: fontData as CFData),
           let cgFont = CGFont(provider) {
            var error: Unmanaged<CFError>?
            if CTFontManagerRegisterGraphicsFont(cgFont, &error) {
                let fontDescriptor = CTFontDescriptorCreateWithAttributes([
                    kCTFontNameAttribute: fontName as CFString,
                    kCTFontSizeAttribute: size
                ] as CFDictionary)
                return UIFont(descriptor: fontDescriptor, size: size)
            } else {
                if let error = error?.takeRetainedValue() {
                    print("Failed to register font: \(error)")
                } else {
                    print("Failed to register font with an unknown error")
                }
            }
        } else {
            print("Failed to load font data")
        }
        
        fatalError("Failed to load font named \(fontName)")
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
            .font(.pretendard(10))
    }
}
