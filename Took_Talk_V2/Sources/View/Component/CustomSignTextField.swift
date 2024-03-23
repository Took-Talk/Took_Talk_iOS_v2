//
//  CustomSignTextField.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/6/24.
//

import SwiftUI

struct CustomSignTextField: View/*, TextFieldRepresentable*/ {
    @State var text: String?
    @State var placeholder: String
    @State var textfieldValue: String
    
    var body: some View {
        VStack {
            if text != nil {
                HStack {
                    Text(text ?? "")
                        .font(.custom(pretendardRegular, size: 15))
                    
                    Spacer()
                }
                .padding(.bottom, 0)
            }
            TextField(placeholder, text: $textfieldValue)
                .frame(width: 290, height: 28)
            
            Rectangle()
                .frame(width: 290, height: 0.7)
                .foregroundColor(Color("myGray"))
                .padding(.top, 0)
        }
        .frame(width: 290, alignment: .center)

    }
}



