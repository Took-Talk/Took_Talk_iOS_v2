//
//  PageViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import SwiftUI

class PageViewModel: ObservableObject {
    @Published var isCertificate = false
    @Published var progress: Int = 1 {
        didSet {
            if progress > 6 {
                progress = 6
            }
        }
    }
    
    func next() {
        
        print("next", self.isCertificate)
        let newProgress = self.progress + 1
        switch newProgress {
        case 2:
            if self.isCertificate {
                self.progress = newProgress
                print("PageViewModel.next() 전화번호 인증 되었습니다", self.isCertificate)
            } else {
                print("PageViewModel.next() 전화번호 인증하세요", self.isCertificate)
            }
        default:
            print("PageViewModel.next() default 전화번호 인증하세요", self.isCertificate)
        }
    }
    
    func back() {
        progress -= 1
    }
}
