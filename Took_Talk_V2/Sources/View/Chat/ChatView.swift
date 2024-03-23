//
//  ChatView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import SwiftUI

struct ChatView: View {
    @StateObject var viewModel = ChatViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 8) {
                        HStack {
                            Image(systemName: "person.fill")
                                .frame(maxWidth: 32, alignment: .topLeading)
                                .padding(.bottom, 16)
                                .padding(.trailing, 4)
                            
                            HStack {
                                Text("안녕!")
                                    .padding()
                            }
                            .frame(maxWidth: 260, alignment: .leading)
                            .background(Color(uiColor: .lightGray))
                            .cornerRadius(20)
                        }
                        .frame(maxWidth: 360)
                        HStack {
                            Image(systemName: "person.fill")
                                .frame(maxWidth: 32, alignment: .topLeading)
                                .padding(.bottom, 16)
                                .padding(.trailing, 4)
                            
                            HStack {
                                Text("너의 관심사는 뭐야?")
                                    .padding()
                            }
                            .frame(maxWidth: 260, alignment: .leading)
                            .background(Color(uiColor: .lightGray))
                            .cornerRadius(20)
                        }
                        .frame(maxWidth: 360)
                    }
//                    ForEach($viewModel.mockData) { message in
//                        MessageView(message: message)
////                            .padding(.top, 10)
//                    }
                }
                HStack {
//                    TextField("Aa", text : $viewModel.text, axis:.vertical)
//                        .padding()
                    
                    Button {
//                        viewModel.sendMessage(text: viewModel.text)
//                        viewModel.text = ""
                        
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.black)
                            .padding()
                            .background(.mint)
                            .cornerRadius(50)
                            .padding(.trailing)
                    }
                }.background(Color(uiColor: .systemGray6))
            }
            .toolbar(.visible, for: .navigationBar)
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
//            viewModel.navigation()
        }) {
            HStack {
                Image(systemName: "door.left.hand.open")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                
            }
        })
    }
}

#Preview {
    ChatView()
}
