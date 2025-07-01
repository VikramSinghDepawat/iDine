//
//  AppRootView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct AppRootView: View {
    @State private var selectedTab = 0
    @StateObject private var orderManager = OrderManager()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .environmentObject(orderManager)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .tag(0)
            
            OrderView(selectedTab: $selectedTab)
                .environmentObject(orderManager)
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
                .tag(1)
        }
    }
}

#Preview {
    AppRootView()
}
