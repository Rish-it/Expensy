//
//  ExpensyApp.swift
//  Expensy
//
//  Created by Rishit sharma on 03/03/24.
//

import SwiftUI

@main
struct ExpensyApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
