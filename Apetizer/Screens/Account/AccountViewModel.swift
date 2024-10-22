//
//  AccountViewModel.swift
//  Apetizer
//
//  Created by Cami Mamedov on 28.01.24.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
    @AppStorage("userData") private var userData: Data?
    
    @Published var user = UserData()
    @Published var alertItem: AlertItem? = nil
    
    var isValidForm: Bool{
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else{
            alertItem = AlertContext.formEmpty
            return false
        }
        
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges(){
        guard isValidForm else { return }
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }
        catch{
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUserData(){
        guard let userData = userData else { return }
        
        do{
            let data = try JSONDecoder().decode(UserData.self, from: userData)
            user = data
        }
        catch{
            alertItem = AlertContext.invalidUserData
        }
    }
}
