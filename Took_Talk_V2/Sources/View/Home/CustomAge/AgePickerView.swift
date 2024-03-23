//
//  AgePickerView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/20/23.
//

import SwiftUI

struct AgePickerView: UIViewRepresentable {
    let textField = UITextField()
    let picker = UIPickerView()
    
    let values: [Int]
    @Binding var selected: Int
    
    func makeUIView(context: Context) -> UITextField {
        self.textField.tintColor = .clear
        self.textField.inputView = self.picker
        
        self.textField.textColor = .black
        self.textField.font = UIFont(name: pretendardSemiBold, size: 32)
        self.textField.textAlignment = .center
        self.textField.adjustsFontSizeToFitWidth = true
        self.textField.isEnabled = true
        
        
        let toolbar = UIToolbar()
        let doneBtn = UIBarButtonItem(title: "완료", image: nil, primaryAction: context.coordinator.doneAction)
        let flexibleSpaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.sizeToFit()
        toolbar.setItems([flexibleSpaceButton, doneBtn], animated: false)
        self.textField.inputAccessoryView = toolbar
        
        self.picker.dataSource = context.coordinator
        self.picker.delegate = context.coordinator
        self.picker.selectRow(0, inComponent: 0, animated: false)
        
        return self.textField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = "\(self.selected)"
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        let parent: AgePickerView
        lazy var doneAction = UIAction(handler: doneButtonTapped(action:))
        
        init(_ parent: AgePickerView) {
            self.parent = parent
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return parent.values.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return "\(parent.values[row])"
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            parent.selected = parent.values[row]
            parent.textField.text = "\(parent.values[row])"
        }
        
        private func doneButtonTapped(action: UIAction) {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}
