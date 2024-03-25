//
//  PageViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/8/24.
//

import Foundation

class PageViewModel: ObservableObject {
    @Published var progress: Int = 1 {
        didSet {
            if progress > 6 {
            progress = 6
        }
            
        }
    }

    func next() {
        progress += 1

        
        
    }
    func back() {
        progress -= 1
    }
}
