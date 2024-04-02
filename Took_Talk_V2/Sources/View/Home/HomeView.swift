//
//  HomeView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/18/23.
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image("TookTalkMainLogo")
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                HomeExplanationView(text: "상대의 MBTI")
                
                MbtiPickerView(selected: $viewModel.mbti)
                    .frame(width: 79, height: 39)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color("myOrange"), lineWidth: 1)
                    )
                    .padding(.bottom, 5)
                
                HomeExplanationView(text: "상대의 나이")
                
                AgePickerView(
                    values: Array(14...19),
                    selected: $viewModel.setAge
                )
                .foregroundStyle(.black)
                .frame(width: 76, height: 50, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color("myOrange"), lineWidth: 1)
                )
                .padding(.bottom, 5)
                .padding(.horizontal, 10)
                
                HomeExplanationView(text: "상대의 성별")
                
                SexSwitchView()
                    .frame(width: 275, height: 120)
                    .padding(.horizontal, 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal, 65)
                            .padding(.vertical, -10)
                    )
                
                    .padding(.bottom, 50)
                Button {
                    viewModel.navigationChatView()
                } label: {
                    Text("START")
                        .font(.pretendard(20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 137, height: 45, alignment: .center)
                }
                .background(Color.myOrange)
                .cornerRadius(10)
                .navigationDestination(isPresented: $viewModel.isChatViewActive) {
                    ChatView()
                }
                
                Spacer()
                    .frame(height: 80)
            }
            .toolbar(.visible, for: .navigationBar)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(trailing:
                                    Button {
                
            } label: {
                HStack {
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                    
                }
            })
        }
    }
}

#Preview {
    MainTabView()
}
