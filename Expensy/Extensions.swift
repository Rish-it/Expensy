//
//  Extensions.swift
//  Expensy
//
//  Created by Rishit sharma on 03/03/24.
//

import Foundation
import SwiftUI

extension Color {
    static let Background = Color("Background")
    static let Icon = Color("Icon")
    static let Text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}


extension DateFormatter {
    static let allNumericINDIA: DateFormatter = {
        print("Initializing DateFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "DD/mm/yyyy"
        return formatter
    }()
}

extension String{
    func datePrarsed()-> Date{
        guard let parsedDate=DateFormatter.allNumericINDIA.date(from:self)
        else {
            return Date()
        }
        return parsedDate
    }
}
