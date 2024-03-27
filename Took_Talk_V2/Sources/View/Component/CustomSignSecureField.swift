//
//  CustomSignSecureField.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/6/24.
//

import SwiftUI

struct CustomSignSecureField: View {
    @State var text: String?
    @State var placeholder: String
    @State var textfieldValue: String
    
    var body: some View {
        VStack {
            HStack {
                Text(text ?? "")
                    .font(.pretendard(15))

                Spacer()
            }
            .padding(.top, 30)
            .padding(.leading, 15)
            .padding(.bottom, 0)
            
            SecureField(placeholder, text: $textfieldValue)
                .frame(width: 290, height: 28)
            
            Rectangle()
                .frame(width: 290, height: 0.7)
                .foregroundColor(Color("myGray"))
                .padding(.top, 0)
        }
    }
}
