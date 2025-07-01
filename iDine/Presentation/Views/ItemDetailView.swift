//
//  ItemDetailView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct ItemDetailView: View {
    @StateObject private var viewModel: ItemDetailViewModel
    
    var imageWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var imageheight: CGFloat {
        return imageWidth * 0.7
    }
    
    private let item: MenuItem
    
    init(orderManager: any OrderManaging, item: MenuItem) {
        _viewModel = StateObject(wrappedValue: ItemDetailViewModel(orderManager: orderManager))
        self.item = item
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                if !item.imageURL.isEmpty, let url = URL(string: item.imageURL) {
                    AsyncImage(url: url)
                        .frame(width: imageWidth, height: imageheight)
                } else {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: imageWidth, height: imageheight)
                }
                Text(item.description)
                    .font(.body)
                    .padding(.horizontal,16)
               
                Button("Order Now") {
                    viewModel.addToOrder(item)
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
            }
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(.hidden, for: .tabBar)
        }
    }
}
