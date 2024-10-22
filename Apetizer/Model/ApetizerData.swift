//
//  ApetizerData.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import Foundation

struct ApetizerData: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let carbs: Int
    let protein: Int
    let calories: Int
    let price: Double
}

struct ApetizerResponse: Decodable{
    let request: [ApetizerData]
}

struct MockData{
    static let apetizers = [ApetizerData(id: 1, name: "Menu Item 1", description: "This is dectiption for menu. Bon Apetit",
                                         imageURL: "", carbs: 99, protein: 99, calories: 999, price: 9.99),
                            ApetizerData(id: 2, name: "Menu Item 2", description: "This is dectiption for menu. Bon Apetit",
                                                                         imageURL: "", carbs: 99, protein: 99, calories: 999, price: 9.99),
                            ApetizerData(id: 3, name: "Menu Item 3", description: "This is dectiption for menu. Bon Apetit",
                                                                         imageURL: "", carbs: 99, protein: 99, calories: 999, price: 9.99),
                            ApetizerData(id: 4, name: "Menu Item 4", description: "This is dectiption for menu. Bon Apetit",
                                                                         imageURL: "", carbs: 99, protein: 99, calories: 999, price: 9.99),
                            ApetizerData(id: 5, name: "Menu Item 5", description: "This is dectiption for menu. Bon Apetit",
                                                                         imageURL: "", carbs: 99, protein: 99, calories: 999, price: 9.99)]
}
