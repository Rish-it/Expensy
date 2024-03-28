//
//  TransactionModel.swift
//  Expensy
//
//  Created by Rishit sharma on 27/03/24.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryld: Int
    var category: String
    let sPending: Bool
    var isTransfer: Bool 
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date{
        date.datePrarsed()
    }
    
    var signedAmount:Double {
        return type == TransactionType.credit.rawValue
        ? amount : -amount
    }
}


enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}

