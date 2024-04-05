import SwiftUI
struct RecentTransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Recent Transactions")
                    .bold()
                    .padding(.horizontal)
                Spacer()
                
                NavigationLink{}
                label:{
                    HStack(spacing: 4){
                        
                        Text("See all")
                        Image(systemName: "chevron.right")
                    }.padding(.horizontal)
                    .foregroundColor(Color.secondary)
                }.padding(.top)

            }
            
            ScrollView { // Add a ScrollView to make the list scrollable if needed
                ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()), id: \.element) { index, transaction in
                    TransactionRow(transaction: transaction)
                        .padding(.vertical, 5)
                    
                    Divider()
                        .opacity(index == 4 ? 0 : 1)
                }
            }
            .padding(.horizontal)
            .background(Color.systemBackground)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 0)
        }
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        Group {
            RecentTransactionList()
            RecentTransactionList()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
    }
}
