//
//  ItemDetailViewModel.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 01/07/25.
//

import Foundation

final class ItemDetailViewModel: ObservableObject {
    private let orderManager: any OrderManaging
    
    init(orderManager: any OrderManaging) {
        self.orderManager = orderManager
    }
    
    func addToOrder(_ item: MenuItem) {
        orderManager.add(item)
    }
}
