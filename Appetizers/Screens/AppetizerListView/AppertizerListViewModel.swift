//
//  AppertizerListViewModel.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 28/08/21.
//

import SwiftUI

final class AppertizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            guard let self = `self` else { return }
            
            DispatchQueue.main.async {
                self.isLoading = false
            }
            
            switch result {
            case .success(let appetizers):
                DispatchQueue.main.async {
                    self.appetizers = appetizers
                }
            case .failure(let error):
                print(error.localizedDescription)
                switch error {
                case .invalidData:
                    self.alertItem = AlertContext.invalidData
                case .invalidResponse:
                    self.alertItem = AlertContext.invalidResponse
                case .invalidURL:
                    self.alertItem = AlertContext.invalidURL
                case .unableToComplete:
                    self.alertItem = AlertContext.unableToComplete
                }
            }
        }
    }
}
