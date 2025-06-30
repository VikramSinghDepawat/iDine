//
//  PaymentOptionView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct PaymentOptionView: View {
    @State private var paymentMethod = "Cash"
    @State private var addLoyaltyCard = false
    @State private var loyaltyID = ""
   
    let paymentOptions = ["Cash", "Credit Card", "Points"]
   
    var body: some View {
        Section {
            Picker("How do you want to pay?", selection: $paymentMethod) {
                ForEach(paymentOptions, id: \.self) {
                    Text($0)
                }
            }
            
            Toggle("Add iDine loyalty card", isOn: $addLoyaltyCard)
            
            if addLoyaltyCard {
                TextField("Enter your iDine ID", text: $loyaltyID)
                    .keyboardType(.numberPad)
            }
        }
    }
}
