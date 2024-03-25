//
//  SignupNicNameView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2024/03/07.
//

import SwiftUI

struct SignupNicNameView: View {
    @StateObject private var viewModel = SignupNicNameViewModel()
    
    var body: some View {
        VStack {
            CustomSignTextField(text: "닉네임", placeholder: "닉네임을 입력해주세요", textfieldValue: viewModel.nicname)
                .padding(.bottom, 30)
            
            CustomSignTextField(text: "나이", placeholder: "나이를 입력해주세요", textfieldValue: viewModel.age)
                .padding(.bottom, 30)
            
            HStack {
                Text("성별")
                    .font(.pretendard())
                
                Spacer()
            }
            .padding(.bottom, 0)
            
            HStack {
                Button(action: {
                    viewModel.isBoySelected.toggle()
                    viewModel.isGirlSelected = false
                }) {
                    Text("Boy")
                        .foregroundColor(.black)
                        .font(.pretendard())
                }
                .frame(width: 140, height: 45)
                .background(viewModel.isBoySelected ? Color(UIColor.systemGray2) : Color(.systemGray5))
                .cornerRadius(10)
                
                Button(action: {
                    viewModel.isGirlSelected.toggle()
                    viewModel.isBoySelected = false
                }
                ) {
                    Text("Girl")
                        .foregroundColor(.black)
                        .font(.pretendard())
                }
                .frame(width: 140, height: 45)
                .background(viewModel.isGirlSelected ? Color(UIColor.systemGray2) : Color(UIColor.systemGray5))
                .cornerRadius(10)
                
            }
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
}

#Preview {
    SignupNicNameView()
}
