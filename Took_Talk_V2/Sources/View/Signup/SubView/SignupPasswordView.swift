//
//  SignupPasswordView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/21.
//

import SwiftUI

struct SignupPasswordView: View {
    @StateObject private var viewModel = SignupPasswordViewModel()
    var body: some View {
        VStack {
            CustomSignTextField(text: "비밀번호", placeholder: "비밀번호를 입력해주세요", textfieldValue: viewModel.password)
            //                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.bottom, 30)
            CustomSignTextField(text: "비밀번호 확인", placeholder: "비밀번호를 확인해주세요", textfieldValue: viewModel.passwordCheck)
            
            Spacer()
        }
    }
}

#Preview {
    SignupPasswordView()
}
