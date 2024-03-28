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
        VStack {
            Image("TookTalk_Signup_Logo")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 37)
            VStack {
                Group {
                    switch viewModel.progress {
                    case 1:
                        SignupPhoneNumberView()
                            .frame(width: 290, height: 350, alignment: .top)
                    case 2:
                        SignupPasswordView()
                            .frame(width: 290, height: 350, alignment: .center)
                    case 3:
                        SignupNicNameView()
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
                }
                Spacer()
            }
            
            PageView(viewModel: viewModel)
                .padding(.bottom, 30)
        }
    }
}

#Preview {
    SignupView()
}
