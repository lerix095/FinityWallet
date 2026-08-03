//
//  ButtonTransaction.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import SwiftUI

struct ButtonTransaction: View {
    let item: ButtonTransactionItem
    
    var body: some View {
        Button {
            //
        } label: {
            VStack(alignment: .center, spacing: 8) {
                Image(item.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(Color(hex: "28342D"))
                    .cornerRadius(radius: 16)
                
                Text(item.label)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(Color(hex: "FFFFFF"))
                    .lineLimit(1)
            }
        }
    }
}
