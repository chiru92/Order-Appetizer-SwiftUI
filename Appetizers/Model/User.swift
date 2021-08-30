//
//  User.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 30/08/21.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}
