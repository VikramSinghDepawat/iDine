//
//  MenuItem.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import Foundation

struct MenuItem: Identifiable, Equatable {
    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let category: MenuCategory
}
