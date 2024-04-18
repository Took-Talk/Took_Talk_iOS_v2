//
//  EditProfileView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/11/24.
//

import SwiftUI

struct EditProfileView: View {
    @StateObject var viewModel = EditProfileViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("choisihun")
                        .resizable()
                        .frame(width: 128, height: 128)
                        .clipShape(
                            Circle()
                        )
                        .overlay(
                            Circle()
                                .stroke()
                                .foregroundStyle(.myGray)
                        )
                    Button {
                        
                    } label: {
                        Text("사진 변경")
                            .font(.pretendard(13))
                            .foregroundStyle(.blue)
                            .underline()
                    }
                    
                    infoView("닉네임", info: viewModel.nickname)
                    
                    infoView("MBTI", info: viewModel.mbti)
                    
                    infoView("관심사", info: "")
                    
                    infoView("자기소개", info: viewModel.bio)

                    Button {
                        viewModel.editProfileSave()
                    } label: {
                        Text("저장")
                            .frame(width: 340, height: 37)
                            .background(.myOrange)
                            .foregroundStyle(.white)
                    }
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15)
                    )
                    
                }
            }
        }
        .navigationTitle("프로필 수정")
        .navigationBarTitleDisplayMode(.large)
    }
}

extension EditProfileView {
    private func infoView(
        _ title: String,
        info: String?
    ) -> some View {
        HStack {
            Text("\(title)")
                .font(.pretendard(15))
                .foregroundStyle(.myOrange)
            if title == "관심사" {
                if viewModel.isPressed {
                    MultiLineHStack(items: viewModel.interests, maxWidth: 200)
                        .frame(maxWidth: .infinity, alignment: .top)

                } else {
                    SingleLineHStack(items: viewModel.interests, maxWidth: 200)
                        .frame(maxWidth: .infinity, alignment: .top)
                }
            } else {
                Text("\(info ?? "")")
                    .font(.pretendard(15))
                    .foregroundStyle(.myGray)
                    .padding(.leading, 6)
                
            }
            Spacer()
        }
        .padding(.top, 30)
        .padding(.leading, 30)
    }
}

#Preview {
    EditProfileView()
}
