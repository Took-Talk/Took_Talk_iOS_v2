//
//  CustomSignTextField.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/6/24.
//

import SwiftUI

struct CustomSignTextField: View {
    @State var text: String?
    @State var placeholder: String
    @Binding var textfieldValue: String
    @State var width: CGFloat?
    
    var body: some View {
        VStack {
                HStack {
                    Text(text ?? "")
                        .font(.pretendard(15))
                    Spacer()
                }
                .padding(.bottom, 0)

            TextField("",
                      text: $textfieldValue,
                      prompt: Text(placeholder).placeholderStyle())
            .frame(width: 290, height: 28)

            Rectangle()
                .frame(width: 290, height: 0.7)
                .foregroundColor(Color.myGray)
                .padding(.top, 0)
        }
        .frame(width: width ?? 290, alignment: .center)

    }
}
