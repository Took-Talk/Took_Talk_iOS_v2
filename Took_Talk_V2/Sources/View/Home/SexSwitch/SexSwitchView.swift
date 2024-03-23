//
//  SexSwitchView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/20/23.
//

import SwiftUI

struct SexSwitchView: View {
    @AppStorage("animationModeKey") private var animationsMode: AnimationMode = .male
    @Environment(\.colorScheme) var colorScheme
    
    let color = Color.gray // Replace with your desired color
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(AnimationMode.allCases.indices, id: \.self) { index in
                    let mode = AnimationMode.allCases[index]
                    let makeDivider = index < AnimationMode.allCases.count - 1
                    Button {
                        animationsMode = mode
                    } label: {
                        VStack(spacing: 7) {
                            Group {
                                switch mode.title {
                                case "male":
                                    Image(systemName: mode.imageName)
                                        .font(.title)
                                        .foregroundStyle(Color.blue)
                                    
                                case "female":
                                    Image(systemName: mode.imageName)
                                        .font(.title)
                                        .foregroundStyle(Color.pink)
                                default :
                                    Image(systemName: mode.imageName)
                                        .font(.title2)
                                }
                            }
                            Text(mode.title)
                                .font(.caption)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(8)
                        .padding(.vertical, 13)
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(BouncyButton())
                    if makeDivider {
                        Divider()
                            .frame(width: 10, height: 60)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(12)
            .padding(.horizontal, -10)
            
            .background {
                GeometryReader { proxy in
                    let caseCount = AnimationMode.allCases.count
                    let backgroundWidth = proxy.size.width / CGFloat(caseCount)
                    let xOffset = backgroundWidth * CGFloat(animationsMode.rawValue)
                        RoundedRectangle(cornerRadius: 20)
                            .fill(color.opacity(0.1))
                            .frame(width: backgroundWidth - 1)
                            .offset(x: xOffset)
                    
                    
                    
                }
            }
            .padding(.horizontal, 25)
            .animation(.smooth, value: animationsMode)
            
        }
    }
}

struct BouncyButton: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .scaleEffect(x: configuration.isPressed ? 0.9 : 1.0, y: configuration.isPressed ? 0.9 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

#Preview {
    SexSwitchView()
}
