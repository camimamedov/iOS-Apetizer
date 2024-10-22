//
//  Alert.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Invalid Data"), message: Text("Invalid Data Message"), dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Invalid Response"), message: Text("Invalid Response Message"), dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Invalid URL"), message: Text("Invalid URL Message"), dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Unable To Complete"), message: Text("Unable To Complete Message"), dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let formEmpty = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in the form have been filled out."), dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct"), dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information successfullty saved"), dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your prifile information."), dismissButton: .default(Text("OK")))
}
