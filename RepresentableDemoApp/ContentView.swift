//
//  ContentView.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image: Image? = nil
    @State private var uiImage : UIImage? = nil
    @State private var showPicker = false
    
    var body: some View {
        NavigationView {
            VStack{
                ESImageView(image: $image)
                    .onTapGesture {
                        showPicker.toggle()
                    }
                Text("Select your image by tapping the image above.")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .navigationTitle(Text("Image Picker Example"))
            .sheet(isPresented: $showPicker) {
                loadImage()
            } content: {
                ImagePicker(image: $uiImage, sourceType: .photoLibrary)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        resetImage()
                    } label: {
                        Text("Reset")
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
    
    func loadImage(){
        if let uiImage = uiImage {
            image = Image(uiImage: uiImage)
        }
    }
    
    func resetImage(){
        image = nil
        uiImage = nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
