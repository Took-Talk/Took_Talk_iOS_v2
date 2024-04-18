//
//  CustomInterestWrappingHStackView.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/12/24.
//

import SwiftUI

struct CustomInterestWrappingHStackView: View {
    let isPressed: Bool!
    let item: Array<String>!
    var body: some View {
        if isPressed {
            MultiLineHStack(items: item, maxWidth: 200)
                .frame(maxWidth: .infinity, alignment: .top)

        } else {
            SingleLineHStack(items: item, maxWidth: 200)
                .frame(maxWidth: .infinity, alignment: .top)
        }
            }
}
