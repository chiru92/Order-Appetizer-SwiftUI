//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 27/08/21.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppertizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppetizerListView()
        }
    }
}
