//
//  AppRootView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct AppRootView: View {
    @State private var selectedTab = 0
    @StateObject private var order = OrderManager()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .tag(0)
            
            OrderView(selectedTab: $selectedTab)
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
                .tag(1)
        }
        .environmentObject(order)
    }
}


#Preview {
    AppRootView()
}
