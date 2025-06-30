//
//  RowView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct RowView: View {
    let item: MenuItem
    let avatarSize: AvatarSize
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            if !item.imageURL.isEmpty, let url = URL(string: item.imageURL) {
                AsyncImage(url: url)
                    .frame(width: avatarSize.dimension, height: avatarSize.dimension)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color(uiColor: UIColor.systemGray5), lineWidth: 3)
                    }
            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: avatarSize.dimension, height: avatarSize.dimension)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color(uiColor: UIColor.systemGray5), lineWidth: 3)
                    }
            }
            
            Text(item.name)
                .font(.headline)
        }
    }
}

#Preview {
    RowView(item: MockData().sampleMenu[1], avatarSize: .small)
}



