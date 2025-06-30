//
//  PaymentView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct PaymentView: View {
    @State var selectedTip: Int = 15
    @State var baseTotal: Double = 22.00
    @State var hasShownAlert: Bool = false
    
    var totalPrice: Double {
        let tipAmount = baseTotal * Double(selectedTip) / 100
        return baseTotal + tipAmount
    }
    
    var body: some View {
        NavigationStack {
            Form {
                PaymentOptionView()
                AddTipView(selectedTip: $selectedTip)
                
                OrderConfirmView(hasShownAlert: $hasShownAlert, totalPrice: totalPrice, selectedTip: selectedTip)

            }
            .alert("Order Confirmation", isPresented: $hasShownAlert, actions: {
                Button("Ok", role: .cancel) { }
            }, message: {
                Text("Your order total is \(totalPrice, format: .currency(code: "INR")), Thank you.")
            })
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    PaymentView()
}


