//
//  ContentView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct HomeView: View {
    let groupedItems = Dictionary(grouping: MockData().sampleMenu, by: { $0.category })
    
    var body: some View {
        List {
            ForEach(MenuCategory.allCases, id: \.self) { category in
                if let items = groupedItems[category] {
                    Section(header: Text(category.rawValue)) {
                        ForEach(items) { item in
                            NavigationLink(destination: ItemDetailView(item: item)) {
                                Text(item.name)
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

