//
//  Image+Extensions.swift
//  RepresentableDemoApp
//
//  Created by Ege Sucu on 12.02.2022.
//

import SwiftUI

extension Image{
    func esModifier() -> some View{
        self
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
            .scaledToFill()
            .cornerRadius(20)
            .shadow(radius: 8)
            .padding(20)
            .padding(.bottom)
    }
}
