//
//  ApetizerDetailsView.swift
//  Apetizer
//
//  Created by Cami Mamedov on 27.01.24.
//

import SwiftUI

struct ApetizerDetailsView: View {
    
    @EnvironmentObject var order: Order
    
    var apetizer: ApetizerData
    @Binding var isApetizerDetailsViewShowing: Bool
    
    var body: some View {
        
        VStack{
            ApetizerRemoteImage(urlString: apetizer.imageURL)
                .scaledToFit()
                .frame(width: 300)
            
            VStack{
                Text(apetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(apetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 30){
                    NutritionInfo(name: "Calories", amount: apetizer.calories)
                    NutritionInfo(name: "Carbs", amount: apetizer.carbs)
                    NutritionInfo(name: "Protein", amount: apetizer.protein)
                }
            }
            
            Spacer()
            
            Button(action: {
                order.add(apetizer)
                
                withAnimation {
                    isApetizerDetailsViewShowing = false
                }
                
            }, label: {
                APButton(title: "$\(apetizer.price, specifier: "%.2f") - Add To Order")
            })
            
        }.frame(width: 300, height: 525)
            .background(Color(.systemBackground))
            .background(in: .rect)
            .cornerRadius(15)
            .shadow(radius: 40)
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    withAnimation {
                        isApetizerDetailsViewShowing = false
                    }
                }, label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 15, weight: .light))
                        .foregroundColor(.black)
                        .padding(.all, 7)
                        .background(Color.white.opacity(0.6))
                        .clipShape(Circle())
                        .padding(.all, 10)
                })
            }
        
    }
}

struct NutritionInfo: View {
    let name: String
    let amount: Int
    
    var body: some View {
        VStack (spacing: 10){
            Text(name)
                .font(.system(size: 12))
                .font(.caption)
                .fontWeight(.bold)
            
            Text(amount.description)
                .font(.system(size: 12))
                .font(.caption)
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    ApetizerDetailsView(apetizer: MockData.apetizers[1],
                        isApetizerDetailsViewShowing: .constant(false))
}
