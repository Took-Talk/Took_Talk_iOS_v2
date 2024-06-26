//
//  SignupView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI

struct SignupView: View {
    @StateObject var viewModel = PageViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("TookTalk_Signup_Logo")
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 37)
                VStack {
                    switch viewModel.progress {
                    case 1:
                        SignupPhoneNumberView()
                            .frame(width: 290, height: 350, alignment: .top)
                    case 2:
                        SignupPasswordView()
                            .frame(width: 290, height: 350, alignment: .center)
                    case 3:
                        SignupNickNameView()
                            .frame(width: 290, height: 350, alignment: .center)
                    case 4:
                        SignupInterestView()
                            .frame(maxWidth: .infinity)
                            .frame(height: 350)
                    case 5:
                        SignupMbtiView()
                            .frame(width: 290, height: 350, alignment: .center)
                    case 6:
                        SignupIntroduceView()
                            .frame(width: 290, height: 350, alignment: .center)
                        
                    default:
                        EmptyView()
                    }
                    Spacer()
                }
                
                PageView(viewModel: viewModel)
                    .padding(.bottom, 30)
            }
            .navigationBarBackButtonHidden()
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    CustomBackButton(action: viewModel.back)
                    
                }
            })
        }
    }
}

#Preview {
    SignupView()
}
