//
//  HomeView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/18/23.
//

import SwiftUI

struct HomeView: View {
    @State var setAge: Int = 15
    @State var isWaitingViewActive: Bool = false
    @State private var isCustomBackButtonHidden = true
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image("TookTalkMainLogo")
                    .padding(.top, 30)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                Text("상대의 MBTI")
                    .foregroundStyle(.black)
                    .frame(width: 200, height: 50, alignment: .top)
                    .font(.pretendard(20))
                    .padding(.top, -20)
                
                MbtiPickerView(selected: $viewModel.mbti)
                    .frame(width: 79, height: 39)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)

                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color("myOrange"), lineWidth: 1)
                    )
                    .padding(.vertical, 5)
                
                Text("상대의 나이")
                    .foregroundStyle(.black)
                    .frame(width: 200, height: 50, alignment: .center)
                    .font(.pretendard(20))
                
                AgePickerView(values: Array(14...19), selected: $setAge)
                    .foregroundStyle(.black)
                    .frame(width: 76, height: 50, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color("myOrange"), lineWidth: 1)
                    )
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                
                //                MbtiPickerView(selected: $viewModel.mbti)
                //                    .frame()
                //                    .background(.red)
                
                Text("상대의 성별")
                    .foregroundStyle(.black)
                    .font(.pretendard(20))
                    .frame(width: 200, height: 50, alignment: .center)
                SexSwitchView()
                    .frame(width: 275, height: 120)
                    .padding(.horizontal, 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal, 65)
                            .padding(.vertical, -10)
                        
                    )
                
                    .padding(.bottom, 25)
                Button {
//                    viewModel.routeToWaitingView()
                } label: {
                    Text("START")
                        .font(.pretendard(20, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(width: 137, height: 45, alignment: .center)
                .background(Color("myOrange"))
                .cornerRadius(10)
                
                Spacer()
                    .frame(height: 80)
            }
        }
        .toolbar(.visible, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: 
        Button(action: {
            
        }) {
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

#Preview {
    HomeView()
}
