//
//  WaitingView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/21/23.
//

import SwiftUI
import SwiftUIGIF

struct WaitingView: View {
    @StateObject private var viewModel = WaitingViewModel()
    
    var body: some View {
        VStack {
            ProgressView()
                .controlSize(.large)
                .frame(width: 50, height: 50)
            
            if let data = viewModel.imageData {
                            GIFImage(data: data) // load from data
                                .frame(width: 300)
                        } else {
                            Text("Loading...")
                                .onAppear(perform: viewModel.loadData)
                        }
        }
    }
}

#Preview {
    WaitingView()
}
