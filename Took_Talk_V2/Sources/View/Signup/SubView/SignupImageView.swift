//
//  SignupImageView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/16/24.
//

import SwiftUI

struct SignupImageView: View {
    @StateObject var viewModel = SignupImageViewModel()
    
    var body: some View {
        HStack {
            Text("프로필 사진")
                .font(.pretendard(15))

            Spacer()
        }
        
        Image(uiImage: viewModel.selectedImage)
            .resizable()
            .frame(width: 100, height: 100)
            .background(.gray)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke()
            )
        
        Button {
            viewModel.isShowImagePickerView()
        } label: {
            Text("프로필 사진 설정 \(Image(systemName: "arrow.right"))")
                .font(.pretendard())
                .foregroundStyle(.black)
                .underline()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .sheet(isPresented: $viewModel.isImagePickerShow) {
            ImagePickerView(
                result: $viewModel.result,
                selectedImage: $viewModel.selectedImage,
                sourceType: .photoLibrary
            )
        }
    }
}

#Preview {
    SignupImageView()
}
