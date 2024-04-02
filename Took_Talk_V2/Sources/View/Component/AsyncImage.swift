//
//  CustomAsyncImageView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/2/24.
//

import SwiftUI

struct CustomAsyncImageView: View {
    let imageURL: String
    let size: CGFloat
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .frame(width: size, height: size)
                .padding(.bottom, 3)
                .clipShape(RoundedRectangle(cornerRadius: size / 2, style: .continuous))
        } placeholder: {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: size, height: size)
                .padding(.bottom, 3)
                .clipShape(RoundedRectangle(cornerRadius: size / 2, style: .continuous))
        }
    }
    
}
