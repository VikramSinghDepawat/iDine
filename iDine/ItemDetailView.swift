//
//  ItemDetailView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct ItemDetailView: View {
    let item: MenuItem
    var body: some View {
        Text(item.name)
    }
}

#Preview {
    ItemDetailView(item: MockData().sampleMenu[0])
}
