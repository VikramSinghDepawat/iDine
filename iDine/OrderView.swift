//
//  OrderView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

enum OrderSection: CaseIterable {
    case menuItems
    case placeOrder
}

struct OrderView: View {
    let orderList: [MenuItem] = MockData().sampleMenu
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                ForEach(orderList) { list in
                        HStack {
                            Text(list.name)
                            Spacer()
                            Text("\(list.price, format: .currency(code: "INR"))")
                        }
                    }
                }
            }
            
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
}
