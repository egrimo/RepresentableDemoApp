//
//  ContentView.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("default-image")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .scaledToFill()
                    .onTapGesture {
                        //Open Image Picker
                    }
                    .cornerRadius(20)
                    .shadow(radius: 8)
                    .padding(20)
                    .padding(.bottom)
                Text("Select your image by tapping the image above.")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //Reset Image
                    } label: {
                        Text("Reset")
                            .foregroundColor(.red)
                    }
                }
        }
            .navigationTitle(Text("Image Picker Example"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
