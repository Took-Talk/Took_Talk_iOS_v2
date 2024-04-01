//
//  HomeExplanationView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/1/24.
//

import SwiftUI

struct HomeExplanationView: View {
    let text: String
    var body: some View {
        Text("\(text)")
            .foregroundStyle(.black)
            .font(.pretendard(20))
            .frame(width: 200, height: 50, alignment: .center)
    }
}
