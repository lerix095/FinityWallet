//
//  Chips.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 29.01.2026.
//

import SwiftUI

struct Chips: View {
    @Binding var selectedChip: String
    let item: ChipsItem
    
    var body: some View {
        Button {
            selectedChip = item.id
        } label: {
            HStack(alignment: .center, spacing: 2) {
                Text(item.label)
                    .font(.system(size: 14, weight: .medium))
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .foregroundStyle(selectedChip == item.id ? Color(hex: "3AD17F") : Color(hex: "AAAAAA"))
                
                Image(item.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(selectedChip == item.id ? Color(hex: "3AD17F") : Color(hex: "8F8F8F"))
            }
            .padding(.leading, 8)
            .padding(.trailing, 4)
            .padding(.vertical, 4)
            .background(selectedChip == item.id ? Color(hex: "212121") : Color(hex: "212121").opacity(0))
        }
        .cornerRadius(radius: 12)
        .contextMenu{
            Button("Change") {
                //
            }
            Button("Name") {
                //
            }
            Button("Volume") {
                //
            }
            Button("Price") {
                //
            }
        }
    }
}
