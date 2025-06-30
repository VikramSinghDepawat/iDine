//
//  MenuCategory.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import Foundation

enum MenuCategory: String, CaseIterable, Codable {
    case starters = "Starters"
    case mains = "Main Courses"
    case desserts = "Desserts"
    case drinks = "Drinks"
}
