//
//  ApetizerListView.swift
//  Apetizer
//
//  Created by Cami Mamedov on 25.01.24.
//

import SwiftUI

struct ApetizerListView: View {
    
    @StateObject var viewModel = ApetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.apetizersData){ apetizer in
                    
                    ApetizerListCell(apetizer: apetizer)
                        .onTapGesture {
                            
                            withAnimation {
                                viewModel.selectedApetizer = apetizer
                            }
                        }
                    
                }
                .listStyle(.inset)
                .scrollContentBackground(.hidden)
                .navigationTitle("Menu")
                .disabled(viewModel.isApetizerDetailsViewShowing)
            }
            .task{
                viewModel.getApetizers()
            }
            .blur(radius: viewModel.isApetizerDetailsViewShowing ? 20 : 0)
            
            if viewModel.isApetizerDetailsViewShowing{
                ApetizerDetailsView(apetizer: viewModel.selectedApetizer ?? MockData.apetizers[0],
                                    isApetizerDetailsViewShowing: $viewModel.isApetizerDetailsViewShowing)
//                .transition(.scale)
//                .animation(.easeInOut(duration: 0.5))
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    ApetizerListView()
}
