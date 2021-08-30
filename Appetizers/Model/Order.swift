//
//  Order.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 30/08/21.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offSetes: IndexSet) {
        items.remove(atOffsets: offSetes)
    }
}
