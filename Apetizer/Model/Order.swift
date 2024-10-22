//
//  Order.swift
//  Apetizer
//
//  Created by Cami Mamedov on 28.01.24.
//

import Foundation

final class Order: ObservableObject{
    @Published var items: [ApetizerData] = []
    
    var totalPrice: Double{
        items.reduce(0) { 
            $0 + $1.price
        }
    }
    
    func add(_ apetizer: ApetizerData){
        items.append(apetizer)
    }
    
    func remove(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}
