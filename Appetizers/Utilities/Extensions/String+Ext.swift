//
//  String+Ext.swift
//  Appetizers
//
//  Created by CHIRANJIT SARKAR on 30/08/21.
//

import Foundation

extension String {
    var isValidEmail: Bool {
//        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Z0-9.-]+\\.[A-Za-z]{2,64}"
//        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
//        return emailPredicate.evaluate(with: self)
        
        do {
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
}
