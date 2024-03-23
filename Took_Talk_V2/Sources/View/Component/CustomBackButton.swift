//
//  CustomBackButton.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/7/24.
//

import SwiftUI

struct CustomBackButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.gray)
        }
    }
}
