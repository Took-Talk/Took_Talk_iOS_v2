//
//  ChatInputBar.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/2/24.
//

import SwiftUI

struct ChatInputBar: View {
    var sendPictureAction: () -> Void
    @Binding var newMessage: String
    var sendMessageAction: () -> Void
    var body: some View {
        ZStack {
            HStack {
                Button {
                    sendPictureAction()
                } label: {
                    Image(systemName: "camera")
                        .foregroundColor(.black)
                        .padding(.trailing)
                        .frame(width: 28, height: 28)
                        .font(.title2)
                }
                .padding(.leading, 15)
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 0.5)
                    .frame(width: 325, height: 50)
                
            }
            .padding(.trailing, 12)
            
            HStack {
                TextField("Aa", text: $newMessage, axis: .vertical)
                    .padding(.leading, 70)
                
                Button {
                    sendMessageAction()
                } label: {
                    
                    Image(systemName: "paperplane.fill")
                        .foregroundStyle(.myOrange)
                        .frame(width: 28, height: 28)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 14)
                        )
                        .font(.title2)
                    
                }
                .padding(.trailing, 26)
            }
        }  
    }
}
