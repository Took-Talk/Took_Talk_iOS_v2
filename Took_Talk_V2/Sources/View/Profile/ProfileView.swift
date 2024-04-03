//
//  ProfileView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/14/24.
//

import SwiftUI
import WrappingHStack

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Image("choisihun")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        
                        VStack(alignment: .leading) {
                            Text("\(viewModel.nickname)")
                                .font(.pretendard(20, weight: .light))
                            
                            Text("\(viewModel.number)")
                                .font(.pretendard(15, weight: .light))
                            
                            Button {
                                
                            } label: {
                                Text("수정하기")
                                    .foregroundStyle(.white)
                                    .font(.pretendard(15, weight: .bold))
                            }
                            .frame(width: 80, height: 28)
                            .background(Color.myOrange)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            
                        }
                        Spacer()
                    }
                    .frame(height: 130, alignment: .center)
                    .padding(.horizontal, 40)
                    
                    VStack(spacing: 25) {
                        ProfileInformationView(
                            imageName: "calendar", 
                            text: "나이",
                            info: "\(viewModel.age)"
                        )
                        
                        ProfileInformationView(
                            imageName: "person.2.fill",
                            text: "성별",
                            info: "\(viewModel.gender)"
                        )
                        HStack {
                            Image("Interest")
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.myOrange)
                            
                            Text("관심사")
                                .foregroundStyle(Color.myOrange)
                                .padding(.leading, 15)
                                .font(.pretendard(18))
                            
                            WrappingHStack(viewModel.interests) { arr in
                                Text("\(arr)")
                                    .font(.pretendard(15))
                                    .foregroundStyle(.black)
                                    .padding(.horizontal, 4)
                                    .frame(height: 30)
                                    .foregroundColor(Color(.systemGray4))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(.systemGray3), lineWidth: 1)
                                    )
                                    .padding(.vertical, 3)
                            }
                            
                            Button {
                                viewModel.isPressed.toggle()
                            } label: {
                                Image(systemName: "arrowtriangle.right.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.black)
                            }
                            .rotationEffect(Angle(degrees: viewModel.isPressed ? 90 : 0))
                            .animation(.easeInOut(duration: 0.2))
                            .padding(.trailing, 20)
                        }
                        if viewModel.isPressed {
                            
                        }
                        
                        ProfileInformationView(
                            imageName: "doc.text.magnifyingglass",
                            text: "MBTI", 
                            info: "\(viewModel.mbti)"
                        )
                        
                    }
                    .padding(.leading, 40)
                    
                    Divider()
                        .frame(width: 292, height: 0.7)
                        .padding(.top, 15)
                    
                    VStack(spacing: 25) {
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "person.crop.circle.badge.minus")
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.red)
                                
                                Text("로그아웃")
                                    .foregroundStyle(.red)
                                    .padding(.leading, 15)
                            }
                            .frame(width: 290, height: 30, alignment: .leading)
                            
                            Spacer()
                        }
                        Button {
                            
                        } label: {
                            HStack {
                                Image(systemName: "door.left.hand.open")
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.red)
                                
                                Text("탈퇴하기")
                                    .foregroundStyle(.red)
                                    .padding(.leading, 15)
                            }
                            .frame(height: 30)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.leading, 45)
                    
                }
            }
            .navigationTitle("프로필")
            .navigationBarTitleDisplayMode(.large)
            .onAppear {
                viewModel.getUserInfo()
            }
            .refreshable {
                viewModel.getUserInfo()
            }
        }
        
    }
}

#Preview {
    MainTabView()
}
