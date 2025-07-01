//
//  HomeView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var manager: OrderManager
    let groupedItems = Dictionary(grouping: MockData().sampleMenu, by: { $0.category })
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MenuCategory.allCases, id: \.self) { category in
                    if let items = groupedItems[category] {
                        MenuSectionView(category: category, items: items, manager: manager)
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
}


struct MenuSectionView: View {
    let category: MenuCategory
    let items: [MenuItem]
    let manager: OrderManager
    
    var body: some View {
        Section(header: Text(category.rawValue).font(.headline)) {
            ForEach(items) { item in
                NavigationLink(
                    destination: ItemDetailView(orderManager: manager, item: item)
                ) {
                    RowView(item: item, avatarSize: .small)
                }
            }
        }
    }
}



#Preview {
    HomeView()
}

