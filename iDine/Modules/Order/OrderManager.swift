//
//  OrderManager.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 01/07/25.
//

import Foundation

class OrderManager: ObservableObject {
    @Published var items: [MenuItem] = []
    
    func add(_ item: MenuItem) {
        items.append(item)
    }
    
    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func removeAll() {
        items.removeAll()
    }
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
}
