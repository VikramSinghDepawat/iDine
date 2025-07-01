//
//  PaymentViewModel.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 01/07/25.
//

import SwiftUI

final class PaymentViewModel: ObservableObject {
    @Published var selectedTip: Int = 15
    @Published var hasShownAlert = false
    
    var baseTotal: Double = 0.0
    
    var totalPrice: Double {
        baseTotal + (baseTotal * Double(selectedTip) / 100)
    }
    
    func confirmOrder(order: any OrderManaging, selectedTab: inout Int, dismiss: DismissAction) {
        order.removeAll()
        selectedTab = 0
        dismiss()
    }
}
