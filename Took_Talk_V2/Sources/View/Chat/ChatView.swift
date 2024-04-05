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
        NavigationStack {
            VStack {
                ScrollViewReader { proxy in
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 3) {
//                            CustomAsyncImageView(
//                                imageURL: "https://wallpapers.com/images/high/intense-harimau-walking-on-grass-m7h2k7q1z815w5zk.webp",
//                                size: 140)
                            Text(viewModel.name)
                                .font(.pretendard(20))
                            
                            Text(viewModel.mbti)
                                .font(.pretendard(30))
                            
                            Text(viewModel.bio)
                                .font(.pretendard(12))
                                .padding(.top, 20)
                            
                            Text("\(viewModel.name)님이 입장하였습니다\n매너 대화 지켜주세요!")
                                .font(.pretendard(12))
                                .foregroundStyle(Color(.systemGray2))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 20)
                            
                            ForEach(viewModel.mockData) { message in
                                MessageView(viewModel: viewModel, message: message)
                                    .padding(.leading, 0)
                                    .id(message.id)
                                
                            }
                        }
                        .onChange(of: viewModel.mockData.count) { _ in
                                withAnimation {
                                    if !viewModel.mockData.isEmpty {
                                        let lastIndex = viewModel.mockData.count - 1
                                        let lastMessageId = viewModel.mockData[lastIndex].id
                                        DispatchQueue.main.async {
                                            proxy.scrollTo(lastMessageId, anchor: .bottom)
                                        }
                                    }
                                }
                            }
                        
                    }
                    .padding(.bottom, 5)
                }
                ZStack {
                    HStack {
                        Button {
                            viewModel.photoButton()
                        } label: {
                            Image(systemName: "camera")
                                .foregroundColor(.black)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
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
                        TextField("Aa", text: $viewModel.text, axis: .vertical)
                            .padding(.leading, 70)
                        
                        Button {
                            viewModel.sendMessage()
                        } label: {
                            
                            Image(systemName: "paperplane.fill")
                                .foregroundStyle(.myOrange)
                                .frame(width: 28, height: 28)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .font(.title2)
                            
                        }
                        .padding(.trailing, 26)
                    }
                }
                .padding(.bottom, 10)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                    Text("알파메일최시훈")
            )
            .navigationBarItems(leading:
                                    Button {
                
            } label: {
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }
            })
            .navigationBarItems(leading:
                                    Button {
                
            } label: {
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
}

#Preview {
    ChatView()
}
