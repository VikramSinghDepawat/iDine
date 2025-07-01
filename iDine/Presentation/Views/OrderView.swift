//
//  OrderView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct OrderView: View {
    @Binding var selectedTab: Int
    @EnvironmentObject var orderManager: OrderManager
    @StateObject private var viewModel: OrderViewModel
    
    init(selectedTab: Binding<Int>) {
        self._selectedTab = selectedTab
        self._viewModel = StateObject(wrappedValue: OrderViewModel(orderManager: OrderManager())) // temporary, will override
    }
    
    var body: some View {
        NavigationStack {
            if orderManager.items.isEmpty {
                VStack(spacing: 16) {
                    Image(systemName: "cart")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                    Text("Your order is empty")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                List {
                    ForEach(orderManager.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.price, format: .currency(code: "INR"))")
                        }
                    }
                    .onDelete(perform: orderManager.remove)
                    
                    NavigationLink(destination: PaymentView(selectedTab: $selectedTab)) {
                        Text("Place Order")
                    }
                }
            }
        }
        .navigationTitle("Order")
        .onAppear {
            viewModel.orderManager = orderManager // inject real one
        }
    }
    
    
}

