//
//  ImagePicker+Extensions.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

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
