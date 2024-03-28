//
//  PreviewData.swift
//  Expensy
//
//  Created by Rishit sharma on 27/03/24.
//

import Foundation
import SwiftUI
var transactionPreviewData = Transaction(id: 1, date: "27/03/2024", institution: "Sharmma Firms", account: "Visa Corp.", merchant: "Apple", amount: 69.69, type: "debit", categoryld: 6996, category: "Software", sPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionListPreviewData = [Transaction] (repeating: transactionPreviewData, count: 10)

