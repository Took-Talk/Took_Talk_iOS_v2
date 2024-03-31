//
//  PageView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI

struct PageView: View {
    @StateObject var viewModel: PageViewModel
    
    let phoneNumberVerifiedPublisher = NotificationCenter.default.publisher(for: .phoneNumberVerified)
    let phoneNumberDidChangePublisher = NotificationCenter.default.publisher(for: .phoneNumberDidChange)
    
    let passwordCheckPublisher =  NotificationCenter.default.publisher(for: .passwordCheck)
    let passwordPublisher = NotificationCenter.default.publisher(for: .passwordDidChange)
    
    let nicknameCheckPublisher =  NotificationCenter.default.publisher(for: .nicknameCheck)
    let nicknamePublisher = NotificationCenter.default.publisher(for: .nicknameDidChange)
    let genderPublisher = NotificationCenter.default.publisher(for: .genderDidChange)
    let agePublisher = NotificationCenter.default.publisher(for: .ageDidChange)
    
    //    let mbtiCheckPublisher =  NotificationCenter.default.publisher(for: .mbtiCheck)
    let mbtiPublisher = NotificationCenter.default.publisher(for: .mbtiDidChange)
    
    //    let interestCheckPublisher =  NotificationCenter.default.publisher(for: .interestCheck)
    let interestPublisher = NotificationCenter.default.publisher(for: .interestsDidChange)
    
    //    let bioCheckPublisher =  NotificationCenter.default.publisher(for: .bioCheck)
    let bioPublisher = NotificationCenter.default.publisher(for: .bioDidChange)
    
    var body: some View {
        VStack {
            ProgressView(value: Float(viewModel.progress), total: 6) {
                Text("\(viewModel.progress)/6")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                    .padding(.trailing, 10)
            }
            .accentColor(Color("myOrange"))
            
            HStack {
                Button {
                    viewModel.back()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(width: 50, height: 50, alignment: .center)
                }
                .frame(width: 50, height: 50, alignment: .leading)
                .background(Color("myOrange"))
                .cornerRadius(25)
                .opacity(viewModel.progress == 1 ? 0 : 1)
                
                Spacer()
                
                Button {
                    viewModel.next()
                } label: {
                    Image(systemName: "chevron.forward")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(width: 50, height: 50, alignment: .center)
                }
                .frame(width: 50, height: 50, alignment: .leading)
                .background(Color("myOrange"))
                .cornerRadius(25)
            }
            .padding(.top, 20)
            .padding(.horizontal, 20)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .onReceive(phoneNumberVerifiedPublisher) { _ in
            viewModel.isCertificate = true
        }
        .onReceive(phoneNumberDidChangePublisher) { notification in
            viewModel.number = notification.object as? String ?? ""
        }
        
        .onReceive(passwordCheckPublisher) { _ in
            viewModel.isSamePassword = true
            print(viewModel.isSamePassword)
            
        }
        .onReceive(passwordPublisher) { notification in
            viewModel.password = notification.object as? String ?? ""
        }
        
        .onReceive(nicknamePublisher) { notification in
            viewModel.nickname = notification.object as? String ?? ""
        }
        .onReceive(genderPublisher) { notification in
            viewModel.gender = notification.object as? String ?? ""
        }
        .onReceive(agePublisher) { notification in
            viewModel.age = notification.object as? String ?? ""
        }
        .onReceive(mbtiPublisher) { notification in
            viewModel.mbti = notification.object as? String ?? ""
        }
        .onReceive(interestPublisher) { notification in
            viewModel.interests = notification.object as? [String] ?? []
        }
        .onReceive(bioPublisher) { notification in
            viewModel.bio = notification.object as? String ?? ""
        }
        
    }
}
