//  TransactionRow.swift
//  Expensy
//
//  Created by Rishit sharma on 29/03/24.
//

import SwiftUI
import SwiftUIFontIcon
struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.icon.opacity(0.3))
                .frame(width: 44, height: 44)
                .overlay{
                    FontIcon.text(.awesome5Solid(code: .money_check), fontsize: 24, color: .primary)
                
                }

            VStack(alignment: .leading, spacing: 6) {
                // Merchant Field
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                // Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // Date
                Text(transaction.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // Amount
            Text(transaction.amount, format: .currency(code: "INR"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)
        }
        .padding(.horizontal)
        .padding([.top, .bottom], 8)
    }
}

struct TransactionRow_Previews:PreviewProvider{
    static var previews: some View{
        TransactionRow(transaction: transactionPreviewData)
        TransactionRow(transaction: transactionPreviewData)
            .preferredColorScheme(.dark)
    }
}

