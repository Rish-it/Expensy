//
//  TransactionRow.swift
//  Expensy
//
//  Created by Rishit sharma on 29/03/24.
//

import SwiftUI
struct TransactionRow: View {
    var transaction: Transaction
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading,spacing:6){
                //Merchant Field
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
            }
            //category
            Text(transaction.category)
                .font(.footnote)
                .opacity(0.7)
                .lineLimit(1)
            // Date
            Text(transaction.dateParsed, format:.dateTime.year().month().day())
                .font(.footnote)
                .foregroundColor(.secondary)
            //amount
            
            Spacer()
            
            Text(transaction.amount, format: .currency(code: "INR"))
                .bold()
                .foregroundColor(transaction.type==TransactionType.credit.rawValue ? Color.text: .primary)
            
            
                
        }
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

