//
//  ApetizerListViewModel.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import Foundation

@MainActor final class ApetizerListViewModel: ObservableObject{
    
    @Published var apetizersData: [ApetizerData] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    @Published var isApetizerDetailsViewShowing = false
    var selectedApetizer: ApetizerData?
    {
        didSet{
            isApetizerDetailsViewShowing = true
        }
    }
    
    /*func getApetizers(){
        isLoading = true
        
        NetworkManager.shared.getApetizers { result in
            
            //Main thread
            DispatchQueue.main.async { [self] in
                
                self.isLoading = false
                
                switch result{
                case .success(let apetizersData):
                    self.apetizersData = apetizersData
                    
                case .failure(let error):
                    switch error{
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
            
        }
    }*/
    
    func getApetizers(){
        isLoading = true
        
        Task{
            do {
                apetizersData = try await NetworkManager.shared.getApetizers()
                isLoading = false
            }
            catch{
                if let error = error as? APError{
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }else{
                    //Generic Error
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }
}
