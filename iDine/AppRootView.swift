//
//  AppRootView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct AppRootView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            PaymentView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

#Preview {
    AppRootView()
}
