//
//  SignleLineHStack.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/4/24.
//

import SwiftUI

struct SingleLineHStack: View {
    let items: [String]
    let maxWidth: CGFloat
    
    var body: some View {
        HStack(spacing: 3) {
            ForEach(wrapItems().first ?? [], id: \.self) { item in
                Text(item)
                    .font(.system(size: 15))
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 4)
                    .frame(height: 30)
                    .foregroundColor(Color(.systemGray4))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                    )
                    .padding(.vertical, 3)
            }
        Spacer()
        }
    }

    func wrapItems() -> [[String]] {
        var result: [[String]] = []
        var currentRow: [String] = []
        var currentWidth: CGFloat = 0
        
        for item in items {
            let itemWidth = item.widthOfString(usingFont: .systemFont(ofSize: 17)) + 10
            
            if currentWidth + itemWidth > maxWidth {
                result.append(currentRow)
                currentRow = [item]
                currentWidth = itemWidth
            } else {
                currentRow.append(item)
                currentWidth += itemWidth
            }
        }
        
        if !currentRow.isEmpty {
            result.append(currentRow)
        }
        
        return result
    }
}
