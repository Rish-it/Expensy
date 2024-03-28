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
                VStack(alignment: .leading, spacing: 25){
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                //Mark: Notification Icon
                ToolbarItem{
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
        }
        
        .navigationViewStyle(.stack)

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews:some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
