//
//  ContentView.swift
//  Expensy
//
//  Created by Rishit sharma on 03/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
            }
            
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                //Mark: Notification Icon
                ToolbarItem{
                    Image(systemName: "bell.badge")
                }
            }
        }
        
        .navigationViewStyle(.stack)

        }
}

#Preview {
    ContentView()
}
