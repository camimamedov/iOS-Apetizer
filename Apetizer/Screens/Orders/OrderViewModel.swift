//
//  OrderViewModel.swift
//  Apetizer
//
//  Created by Cami Mamedov on 28.01.24.
//

import Foundation

final class OrderViewModel: ObservableObject{
    
    @Published var apetizersData: [ApetizerData] = [MockData.apetizers[0], MockData.apetizers[1], MockData.apetizers[0]]
    
}
