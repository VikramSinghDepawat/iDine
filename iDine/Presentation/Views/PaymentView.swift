//
//  PaymentView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct PaymentView: View {
    @Binding var selectedTab: Int
    @EnvironmentObject var order: OrderManager
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = PaymentViewModel()
    
    var body: some View {
        Form {
            PaymentOptionView()
            AddTipView(selectedTip: $viewModel.selectedTip)
            OrderConfirmView(
                hasShownAlert: $viewModel.hasShownAlert,
                totalPrice: viewModel.totalPrice
            ) {
                viewModel.hasShownAlert = true
            }
        }
        .alert("Order Confirmation", isPresented: $viewModel.hasShownAlert) {
            Button("Ok") {
                viewModel.confirmOrder(order: order, selectedTab: &selectedTab, dismiss: dismiss)
            }
        } message: {
            Text("Your order total is \(viewModel.totalPrice, format: .currency(code: "INR")). Thank you.")
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            viewModel.baseTotal = order.totalPrice
        }
    }
}
