//
//  String.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/4/24.
//

import UIKit

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
