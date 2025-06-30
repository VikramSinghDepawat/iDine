//
//  OrderConfirmView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct OrderConfirmView: View {
    @Binding var hasShownAlert: Bool

    var totalPrice: Double
    var selectedTip: Int
    
    var body: some View {
        Section(header: Text("Total: \(totalPrice, format: .currency(code: "INR"))")) {
            Button("Confirm order") {
                // Handle order confirmation
                hasShownAlert = true
                print("Order confirmed with tip: \(selectedTip)%")
            }
            .foregroundColor(.blue)
        }
    }
}
