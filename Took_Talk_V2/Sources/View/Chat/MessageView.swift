//
//  MessageView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI


struct MessageView: View {
//    var message: Message
    var body: some View {
            HStack {
               
                
//                HStack {
////                    Text(message.text)
//                        .padding()
//                }
//                .frame(maxWidth: 260, alignment: .leading)
//                .background(Color(uiColor: .systemBlue))
//                .cornerRadius(20)
//                
                Image(systemName: "person.fill")
                    .frame(maxWidth: 32, alignment: .topLeading)
                    .padding(.bottom, 16)
                    .padding(.trailing, 4)
            }
            .frame(maxWidth: 360, alignment: .trailing)
    }
}

//#Preview {
//    MessageView(message: Message(userUid: "", text: "안녕 ㅊ", photoURL: "", createdAt: ""))
//}
