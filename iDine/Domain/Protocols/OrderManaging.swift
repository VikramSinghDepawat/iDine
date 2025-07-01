//
//  OrderManaging.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 01/07/25.
//

import Foundation

protocol OrderManaging: ObservableObject {
    var items: [MenuItem] { get }
    var totalPrice: Double { get }
    func remove(at offsets: IndexSet)
    func removeAll()
    func add(_ item: MenuItem)
}
