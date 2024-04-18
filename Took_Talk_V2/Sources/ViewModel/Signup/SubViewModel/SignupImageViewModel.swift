//
//  SignupImageViewModel.swift
//  Took_Talk_V2
//
//  Created by 최시훈 on 4/16/24.
//

import SwiftUI

class SignupImageViewModel: ObservableObject {
    @Published var selectedImage: UIImage?
    @Published var isImagePickerShow: Bool = false
    @Published var isShowPhotoLibrary: Bool = false
    @Published var isShowSearchView: Bool = false
    @Published var result = "First you've to select an image"
    @Published var image: UIImage = UIImage() {
        didSet {
            NotificationCenter.default.post(name: .imageDidChange, object: image)
        }
    }
    
    func isShowImagePickerView() {
        self.isImagePickerShow = true
    }
}
