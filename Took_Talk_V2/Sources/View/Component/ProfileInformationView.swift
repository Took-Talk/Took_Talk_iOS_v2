//
//  ProfileInformationView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 3/27/24.
//

import SwiftUI

struct ProfileInformationView: View {
    var imageName: String
    var text: String
    var info: String?
    var interestArray = ["알파", "메일", "최시훈"]
    var foregroundColor: Color?
    
    var body: some View {
        HStack {
            Group {
                if imageName == "Interest" {
                    Image("\(imageName)")
                } else {
                    Image(systemName: "\(imageName)")
                }
            }
            .frame(width: 30, height: 30)
            .foregroundStyle(foregroundColor ?? .myOrange)
            
            Text(text)
                .foregroundStyle(.myOrange)
                .padding(.leading, 15)
                .font(.pretendard(18))
            
            Group {
                switch text {
                case "나이", "성별", "MBTI":
                    Text(info ?? "")
                        .padding(.leading, 20)
                    
                case "관심사":
                    ForEach(interestArray ?? [], id: \.self) { arr in
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
                        
                    }
                default:
                    Text(text)
                }
            }
            .font(.pretendard(18))
            .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
    }
}
