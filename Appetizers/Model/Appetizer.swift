//
//  Appetizer.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 27/08/21.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories : Int
    let protein: Int
    let carbs: Int
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 0010,
                                           name: "Test Appetizer",
                                           description: "Test description of the sample appetizer",
                                           price: 14.99,
                                           imageURL: "https://www.liveeatlearn.com/wp-content/uploads/2018/04/greek-salad-sushi-13-650x450.jpg",
                                           calories: 95,
                                           protein: 84,
                                           carbs: 90)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderOne = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "Test description of the sample appetizer",
                                           price: 14.99,
                                           imageURL: "https://www.liveeatlearn.com/wp-content/uploads/2018/04/greek-salad-sushi-13-650x450.jpg",
                                           calories: 95,
                                           protein: 84,
                                           carbs: 90)
    
    static let orderTwo = Appetizer(id: 0002,
                                           name: "Test Appetizer",
                                           description: "Test description of the sample appetizer",
                                           price: 14.99,
                                           imageURL: "https://www.liveeatlearn.com/wp-content/uploads/2018/04/greek-salad-sushi-13-650x450.jpg",
                                           calories: 95,
                                           protein: 84,
                                           carbs: 90)
    
    static let orderThree = Appetizer(id: 0003,
                                           name: "Test Appetizer",
                                           description: "Test description of the sample appetizer",
                                           price: 14.99,
                                           imageURL: "https://www.liveeatlearn.com/wp-content/uploads/2018/04/greek-salad-sushi-13-650x450.jpg",
                                           calories: 95,
                                           protein: 84,
                                           carbs: 90)
    
    static let orderItems = [orderOne, orderTwo, orderThree, sampleAppetizer]
}
