//
//  ImagePicker.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable{
    
    @Binding var image: UIImage?
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    typealias UIViewControllerType = UIImagePickerController
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let pickerView = UIImagePickerController()
        pickerView.sourceType = sourceType
        pickerView.allowsEditing = true
        pickerView.delegate = context.coordinator
        return pickerView
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
}

extension ImagePicker {
    class Coordinator : NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var parent: ImagePicker
        
        init(_ parent: ImagePicker){
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.editedImage] as? UIImage{
                parent.image = image
            } else {
                parent.image = nil
            }
            picker.dismiss(animated: true)
        }
    }
}
