//
//  CustomStrokedButtonStyle.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/10/24.
//

import SwiftUI

struct CustomStrokedButtonStyle: ButtonStyle {
    var foregroundColor: Color
    var backgroundColor: Color?
    var borderColor: Color
    var radius: CGFloat?
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .contentShape(Rectangle())
            .background(
                RoundedRectangle(cornerRadius: radius ?? 13)
                    .stroke(borderColor, lineWidth: 2)
                    .background(
                        RoundedRectangle(cornerRadius: radius ?? 13)
                            .fill(backgroundColor ?? .white)
                    )
            )
            .foregroundColor(foregroundColor)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
