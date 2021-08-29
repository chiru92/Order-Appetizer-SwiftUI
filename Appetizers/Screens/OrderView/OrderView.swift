//
//  OrderView.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 27/08/21.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders View")
                .navigationTitle("🛍 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
