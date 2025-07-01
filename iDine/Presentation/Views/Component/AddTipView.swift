//
//  AddTipView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

enum TipOptions {
    static let percentages = [10, 15, 20, 25, 0]
}

struct AddTipView: View {
    @Binding var selectedTip: Int
    
    var body: some View {
        Section(header: Text("Add a tip?")) {
            HStack {
                ForEach(TipOptions.percentages, id: \.self) { tip in
                    Button(action: {
                        selectedTip = tip
                    }) {
                        Text("\(tip)%")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(selectedTip == tip ? Color.gray.opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    AddTipView(selectedTip: .constant(10))
}
