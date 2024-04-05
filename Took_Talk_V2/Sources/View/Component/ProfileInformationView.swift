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
    var foregroundColor: Color?
    
    var body: some View {
        HStack {
            Image(systemName: "\(imageName)")
                .frame(width: 30, height: 30)
                .foregroundStyle(foregroundColor ?? .myOrange)
            
            Text(text)
                .foregroundStyle(.myOrange)
                .padding(.leading, 15)
                .font(.pretendard(18))
            
            Text(info ?? "")
                .padding(.leading, 20)
                .font(.pretendard(18))
            
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
    }
}
