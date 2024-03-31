//
//  SignupIntroduceView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/10/24.
//

import SwiftUI

struct SignupIntroduceView: View {
    
    @StateObject private var viewModel = SignupIntroduceViewModel()
    
    var body: some View {
        VStack {
            CustomSignTextField(
                text: "자기소개",
                placeholder: "자기소개를 20자 이내로 적어주세요",
                textfieldValue: $viewModel.bio
            )
            Spacer()
        }
    }
}

#Preview {
    SignupIntroduceView()
}
