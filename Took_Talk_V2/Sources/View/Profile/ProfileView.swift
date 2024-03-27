//
//  ProfileView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/14/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .background(.blue)
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        
                        VStack(alignment: .leading) {
                            Text("양송이 모자")
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
