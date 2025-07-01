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
    var onConfirm: () -> Void
    
    var body: some View {
        Section(header: Text("Total: \(totalPrice, format: .currency(code: "INR"))")) {
            Button("Confirm order") {
                hasShownAlert = true
                onConfirm()
            }
            .foregroundColor(.blue)
        }
    }
}
