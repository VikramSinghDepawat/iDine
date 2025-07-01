//
//  OrderViewModel.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 01/07/25.
//

import Foundation

final class OrderViewModel: ObservableObject {
    var orderManager: any OrderManaging
    
    init(orderManager: any OrderManaging) {
        self.orderManager = orderManager
    }
    
    var items: [MenuItem] {
        orderManager.items
    }
    
    var totalPrice: Double {
        orderManager.totalPrice
    }
    
    func remove(at offsets: IndexSet) {
        orderManager.remove(at: offsets)
    }
    
    func removeAll() {
        orderManager.removeAll()
    }
}

