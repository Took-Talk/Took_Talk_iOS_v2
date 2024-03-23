//
//  SignupMbtiView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/10/24.
//

import SwiftUI

struct SignupMbtiView: View {
    @StateObject var viewModel = SignupMbtiViewModel()
    
    let values: [String] = [
        "ISTJ", "ISFJ", "ISFP", "ISTP",
        "INTJ", "INFJ", "INFP", "INTP",
        "ESTP", "ESTJ", "ESFP", "ESFJ",
        "ENTP", "ENTJ", "ENFP", "ENFJ"
    ]
    var body: some View {
        VStack {
            HStack {
                Text("MBTI")
                    .font(.custom(pretendardRegular, size: 15))
                
                Spacer()
            }
            
            VStack {
                Picker("Mbti를 골라주세요", selection: $viewModel.mbti) {
                    ForEach(values, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.wheel)
                .cornerRadius(15)
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    SignupMbtiView()
}
