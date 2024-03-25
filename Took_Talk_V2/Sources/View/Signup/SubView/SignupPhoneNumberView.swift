//
//  SignupPhoneNumberView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

struct SignupPhoneNumberView: View {
    
    @StateObject var viewModel = SignupPhoneNumberViewModel()

    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("전화번호")
                    .font(.pretendard(size: 15))

                Spacer()
            }
            .padding(.bottom, 0)
            
            HStack {
                
                TextField("전화번호를 입력해주세요", text: $viewModel.phoneNumber)
                Button {
                    withAnimation(.default) {
                        viewModel.certificationNumberField = true
                    }
                    //
                } label: {
                    Text("인증 요청")
                        .font(.pretendard(size: 15))
                }
                .buttonStyle(CustomStrokedButtonStyle(foregroundColor: .black, borderColor: Color("myOrange"), radius: 10))
            }
            .padding(.top, 0)
            .frame(width: 290, height: 28)
            
            Rectangle()
                .foregroundColor(Color("myGray"))
                .frame(width: 210, height: 0.7, alignment: .topLeading)
                .padding(.top, 0)
                .padding(.bottom, 30)
            
            if viewModel.certificationNumberField {
                HStack {
                    Text("인증번호")
                        .font(.pretendard(size: 15))
                    Spacer()
                }
                .padding(.bottom, 0)
                
                ZStack {
                    HStack {
                        Text({ () -> String in
                            let time = 3 * 60 - viewModel.progress
                            let minute = (time % 3600) / 60
                            let seconds = time % 60
                            return String(format: "%02d:%02d", minute, seconds)
                        }())
                        .onAppear() {
                            viewModel.timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
                        }
                        .onReceive(viewModel.timer) { _ in
                            viewModel.progress += 1
                            withAnimation(.default) {
                                let seconds = 3 * 60
                                let time = seconds - viewModel.progress
                                viewModel.percentage = CGFloat(time) / CGFloat(seconds)
                            }
                        }
                    }
                
                    HStack {
                        TextField("인증번호를 입력해주세요", text: $viewModel.certificationNumber)
                        Button {
                            // 인증 확인 코드 추가
                        } label: {
                            Text("인증 확인")
                                .font(.pretendard(size: 15))
                        }
                        .buttonStyle(CustomStrokedButtonStyle(foregroundColor: .black, borderColor: Color("myOrange"), radius: 10))
                    }
                    .padding(.top, 0)
                    .frame(width: 290, height: 28)
                    
                    
                }
                Rectangle()
                    .foregroundColor(Color("myGray"))
                    .frame(width: 210, height: 0.7, alignment: .topLeading)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
            }
               
            
            
        }
        .padding(.top, 0)
    }
}

#Preview {
    SignupPhoneNumberView()
}

