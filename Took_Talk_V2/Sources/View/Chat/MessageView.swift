//
//  MessageView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI

struct MessageView: View {
    @ObservedObject var viewModel: ChatViewModel
    let message: Message
    var body: some View {
        HStack {
            Spacer()
            
            Text(message.text)
                .padding(.horizontal, 8)
                .padding(.vertical, 10)
                .overlay(
                    RoundedCorner(radius: 10,
                                  corners: [.topLeft, .topRight, .bottomLeft])
                    .stroke(Color.myOrange, lineWidth: 0.7)
                )
                .frame(maxWidth: 260, alignment: .trailing)
                .padding(.trailing, 18)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.bottom, viewModel.isUidSame ? 0 : 5)
    }
}
