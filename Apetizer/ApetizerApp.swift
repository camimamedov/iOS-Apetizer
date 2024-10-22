//
//  ApetizerApp.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

@main
struct ApetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ApetizerTabView()
                .environmentObject(order)
        }
    }
}
