//
//  CustomSelectInterestButton.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/17/24.
//

import SwiftUI

struct CustomSelectInterestButton: ButtonStyle {
    @StateObject var viewModel = SignupInterestViewModel()
    var idx: String
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .contentShape(Rectangle())
            .background(
                RoundedRectangle(cornerRadius: 22.5)
                    .background(
                        RoundedRectangle(cornerRadius: 22.5)
                            .fill(.white)
                    )
            )
            .foregroundColor(viewModel.selectedInterest.contains(idx) ? .accentColor : viewModel.selectedInterest.contains(idx) ? Color(.systemGray2) : Color(.systemGray4))

            .background(
                
                )
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        
    }
}

