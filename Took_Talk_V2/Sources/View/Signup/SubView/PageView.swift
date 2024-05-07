//
//  PageView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI

struct PageView: View {
    @StateObject var viewModel: PageViewModel
    
    var body: some View {
        VStack {
            ProgressView(value: Float(viewModel.progress), total: 7) {
                Text("\(viewModel.progress)/7")
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
    }
}
