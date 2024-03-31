//
//  SignupInterestView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI
import WrappingHStack

struct SignupInterestView: View {
    @StateObject var viewModel = SignupInterestViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("관심사")
                    .font(.pretendard())
                Spacer()
            }
            .padding(.top, 0)
            .padding(.bottom, 0)
            .padding(.leading, 20)
            
            VStack(alignment: .leading) {
                ScrollView {
                    WrappingHStack(viewModel.interestsArry) { idx in
                        Button {
                            if viewModel.interests.contains(idx) {
                                viewModel.interests.removeAll { $0 == idx }
                            } else {
                                viewModel.interests.append(idx)
                            }
                            print(viewModel.interests)
                        } label: {
                            Text("\(idx)")
                                .font(.pretendard(weight: .light))
                                .foregroundStyle(.black)
                                .padding(.horizontal, 3)
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 3)
                        .foregroundColor(
                            viewModel.interests.contains(idx) ?
                            Color.myOrange: viewModel.interests.contains(idx) ?
                            Color(.systemGray2): Color(.systemGray4)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(
                                    viewModel.interests.contains(idx) ?
                                    Color(.systemGray2): Color(.systemGray3),
                                    lineWidth: 1
                                )
                        )
                        .padding(.vertical, 3)
                        .padding(.horizontal, 1)
                    }
                }
            }
            .padding(.horizontal, 10)
            Spacer()
        }
    }
}

#Preview {
    SignupInterestView()
}
