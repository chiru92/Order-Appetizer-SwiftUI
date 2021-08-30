//
//  OrderView.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 27/08/21.
//

import SwiftUI 

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { orderItem in
                            AppetizerListCell(appetizer: orderItem)
                        }
                        .onDelete(perform: order.deleteItems(at:))
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button {
                        print("")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding()
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer!")
                }
            }
            .navigationTitle("♨️ Orders")
        }
    }
    
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
