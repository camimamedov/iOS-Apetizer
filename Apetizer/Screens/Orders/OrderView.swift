//
//  OrderView.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom){
                
                List(){
                    ForEach(order.items){ apetizer in
                        ApetizerListCell(apetizer: apetizer)
                    }
                    .onDelete(perform: { indexSet in
                        order.remove(at: indexSet)
                    })
                }
                .listStyle(.inset)
                .scrollContentBackground(.hidden)
              
                
                if order.items.isEmpty{
                    EmptyView()
                }
                
                Button(action: {}, label: {
                    APButton(title: "$\(order.totalPrice, specifier: "%.2f") Place Order", width: 350)
                })
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
}

struct EmptyView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil.and.list.clipboard")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.brandPrimary)
            
            Text("You have no items in your order")
                .font(.title2)
                .fontWeight(.regular)
                .foregroundStyle(.secondary)
        }
        .padding(.bottom, 350)
    }
}
