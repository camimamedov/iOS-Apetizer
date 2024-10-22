//
//  APButton.swift
//  Apetizer
//
//  Created by Cami Mamedov on 27.01.24.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
    var width: CGFloat = 250
    
    var body: some View {
        Text(title)
            .frame(width: width, height: 50)
            .background(.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.bottom, 30)
    }
}

#Preview {
    APButton(title: "Test Button")
}
