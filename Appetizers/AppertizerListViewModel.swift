//
//  AppertizerListViewModel.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 28/08/21.
//

import SwiftUI

final class AppertizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            switch result {
            case .success(let appetizers):
                DispatchQueue.main.async {
                    self.appetizers = appetizers
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
