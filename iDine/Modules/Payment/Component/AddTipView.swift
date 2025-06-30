//
//  AddTipView.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//

import SwiftUI

struct AddTipView: View {
    private let tipPercentages = [10, 15, 20, 25, 0]
    @Binding var selectedTip: Int
    
    var body: some View {
        Section(header: Text("Add a tip?")) {
            HStack {
                ForEach(tipPercentages, id: \.self) { tip in
                    Button(action: {
                        selectedTip = tip
                        print("selectedTip: \(tip)")
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
