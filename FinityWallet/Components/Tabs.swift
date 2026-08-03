//
//  Tabs.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import SwiftUI

struct Tabs: View {
    @Binding var isActive: String
    
    let tabs: [String] = ["1W", "1M", "3M", "6M", "1Y", "All"]
    
    var body: some View {
        HStack(spacing: 2) {
            ForEach(tabs, id: \.self) { item in
                Button {
                    isActive = item
                } label: {
                    Text(item)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 2)
                        .font(isActive == item ? (.system(size: 14, weight: .semibold)) : (.system(size: 14, weight: .medium)))
                        .foregroundStyle(isActive == item ? Color(hex: "3AD17F") : Color(hex: "AAAAAA"))
                        .background(isActive == item ? Color(hex: "212121") : Color(hex: "0F0F0F"))
                        .cornerRadius(radius: 12)
                }
            }
        }
        .padding(2)
        .background(Color(hex: "0F0F0F"))
        .cornerRadius(radius: 14)
    }
}
