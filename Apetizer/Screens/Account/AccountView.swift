//
//  AccountView.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct AccountView: View {
    
    enum FormTextField{ case firstName, lastName, email }
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState var focusedTextField: FormTextField?
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:  Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.none)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthDay,
                               in: Date().birthStartYear...Date().birthEndYear,
                               displayedComponents: .date)
                    
                    Button("Save Changes", action: {
                        viewModel.saveChanges()
                    })
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss"){
                        focusedTextField = nil
                    }
                }
            }
        }
        .onAppear(){
            viewModel.retrieveUserData()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
