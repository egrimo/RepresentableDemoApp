//
//  ESImageView.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

struct ESImageView: View {
    
    @Binding var image: Image?
    
    var body: some View {
        VStack{
            if let image = image {
                image.esModifier()
            } else {
                Image("default-image").esModifier()
            }
        }
    }
}

struct ESImageView_Previews: PreviewProvider {
    static var previews: some View {
        ESImageView(image: .constant(Image("default-image")))
    }
}
