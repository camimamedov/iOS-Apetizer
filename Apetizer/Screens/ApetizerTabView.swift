//
//  ContentView.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct ApetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            ApetizerListView()
                .tabItem {
                    //Override AHIG symbol variants
                    Label("Home", systemImage: "house")
                        .environment(\.symbolVariants, .none)
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
                OrderView()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Order")
                    }
                    .badge(order.items.count)
                
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    ApetizerTabView()
        .environmentObject(Order())
}
