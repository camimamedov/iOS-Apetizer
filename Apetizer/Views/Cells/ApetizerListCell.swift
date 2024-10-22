//
//  ApetizerListCell.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct ApetizerListCell: View {
    
    let apetizer: ApetizerData
    
    var body: some View {
        
        HStack(spacing: 0){
            //Added text for seperator bug
            Text("").frame(width: 0)
            
            ApetizerRemoteImage(urlString: apetizer.imageURL)
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(10)
                .padding(.trailing, 15)
            
//            AsyncImage(url: URL(string: apetizer.imageURL)) { image in
//                image.resizable()
//                    .modifier(ImageCustomModifier())
//            } placeholder: {
//                Image("food-placeholder").resizable()
//                    .modifier(ImageCustomModifier())
//            }

            
            VStack (alignment: .leading, spacing: 5){
                Text(apetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
                Text("$\(apetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    ApetizerListCell(apetizer: MockData.apetizers[0])
}
