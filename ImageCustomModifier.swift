//
//  ImageCustomModifier.swift
//  Apetizer
//
//  Created by Cami Mamedov on 04.02.24.
//

import SwiftUI

struct ImageCustomModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 100)
            .cornerRadius(10)
            .padding(.trailing, 15)
    }
}
