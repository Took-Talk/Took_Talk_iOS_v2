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
                    .font(.custom(pretendardRegular, size: 15))
                Spacer()
            }
            .padding(.top, 0)
            .padding(.bottom, 0)
            .padding(.leading, 20)
            
            VStack(alignment: .leading) {
                ScrollView {
                    WrappingHStack(viewModel.interestsArry) { idx in
                        Button(action: {
                            if viewModel.selectedInterest.contains(idx) {
                                viewModel.selectedInterest.removeAll { $0 == idx }
                            } else {
                                viewModel.selectedInterest.append(idx)
                            }
                            print(viewModel.selectedInterest)
                        }) {
                            Text("\(idx)")
                                .font(.custom(pretendardLight, size: 15))
                                .foregroundStyle(.black)
                                .padding(.horizontal, 3)
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 3)
                        .foregroundColor(viewModel.selectedInterest.contains(idx) ? Color("myOrange") : viewModel.selectedInterest.contains(idx) ? Color(.systemGray2) : Color(.systemGray4))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(viewModel.selectedInterest.contains(idx) ? Color("myOrange") : viewModel.relatedInterest.contains(idx) ? Color(.systemGray2) : Color(.systemGray3), lineWidth: 1)
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

