//
//  OrderView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: OrderManager
    @Binding var selectedTab: Int

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.price, format: .currency(code: "INR"))")
                        }
                    }
                    .onDelete(perform: order.remove)
                }
                
                NavigationLink(destination: PaymentView(selectedTab: $selectedTab, baseTotal: order.totalPrice)) {
                    Text("Place Order")
                }
            }
            
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView(selectedTab: .constant(0))
}
