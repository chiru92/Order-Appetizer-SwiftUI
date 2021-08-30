//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 29/08/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 300, height: 200)
                .aspectRatio(contentMode: .fit)
            
            
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack (spacing: 40) {
                    NutritionDetailView(title: "Calories", value: "\(appetizer.calories)")
                    
                    NutritionDetailView(title: "Carbs", value: "\(appetizer.carbs) g")
                    
                    NutritionDetailView(title: "Protein", value: "\(appetizer.protein) g")
                }
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 500)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 10)
        .overlay( Button {
            print("Close Tapped")
            self.isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}

struct NutritionDetailView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack (spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
