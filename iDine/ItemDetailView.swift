//
//  ItemDetailView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct ItemDetailView: View {
    var imageWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var imageheight: CGFloat {
        return imageWidth * 0.7
    }
    
    let item: MenuItem
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
                    print("Login Button")
                }
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 150, height: 44)
                .background(.blue)
                .cornerRadius(8)
                .padding(.vertical)
                
                Spacer()
            }
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ItemDetailView(item: MockData().sampleMenu[0])
}
