//
//  ProfileView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/14/24.
//

import SwiftUI

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
                            Text("알파 메일 최시훈")
                                .font(.pretendard(20, weight: .light))
                            
                            Text("010-9677-6210")
                                .font(.pretendard(15, weight: .light))
                            
                            Button {
                                
                            } label: {
                                Text("수정하기")
                                    .foregroundStyle(.white)
                                    .font(.pretendard(15, weight: .bold))
                            }
                            .frame(width: 80, height: 28)
                            .background(Color("myOrange"))
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            
                        }
                        Spacer()
                    }
                    .frame(height: 130, alignment: .center)
                    .padding(.horizontal, 40)
                    VStack(spacing: 25) {
                        ProfileInformationView(imageName: "calendar", text: "나이", info: "19")
                        
                        ProfileInformationView(imageName: "person.2.fill", text: "성별", info: "남자")
                        HStack {
                            ProfileInformationView(imageName: "Interest", text: "관심사")
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
                            ForEach(viewModel.interestArray, id: \.self) { arr in
                                Text("\(arr)")
                                    .font(.pretendard(15))
                                    .foregroundStyle(.black)
                                    .padding(.horizontal, 4)
                                    .frame(height: 30)
                                    .foregroundColor( Color(.systemGray4))
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(.systemGray3), lineWidth: 1)
                                    )
                                    .padding(.vertical, 3)
                                    .animation(.default)
                            }
                        }
                        ProfileInformationView(imageName: "doc.text.magnifyingglass", text: "MBTI", info: "ESTP")
                        
                    }
                    .padding(.leading, 50)
                    
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
                            .frame(width: 290,height: 30, alignment: .leading)
                            
                            Spacer()
                        }
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "door.left.hand.open")
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.red)
                                
                                Text("탈퇴하기")
                                    .foregroundStyle(.red)
                                    .padding(.leading, 15)
                            }
                            .frame(width: 290,height: 30, alignment: .leading)
                            
                            Spacer()
                            
                        }
                    }
                    .padding(.top, 10)
                    .padding(.leading, 50)
                    
                }
            }
            .navigationTitle("프로필")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ProfileView()
}
