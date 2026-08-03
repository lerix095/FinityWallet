//
//  FavoriteCard.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 28.01.2026.
//

import SwiftUI

struct FavoriteCard: View {
    var item: FavoriteItem
    
    private var valueColor: Color {
        item.isPositive ? Color(hex: "3AD17F") : Color(hex: "FA3A4A")
    }
    
    var body: some View {
        Button {
            //
        } label: {
            VStack(alignment: .leading, spacing: 24) {
                HStack {
                    HStack(alignment: .center, spacing: 8) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .cornerRadius(radius: 100)
                        
                        Text(item.name)
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(Color(hex: "FFFFFF"))
                            .lineLimit(1)
                    }
                    Spacer()
                    HStack {
                        Text(item.percent)
                            .foregroundStyle(valueColor)
                            .font(.system(size: 14, weight: .semibold))
                            .multilineTextAlignment(.trailing)
                    }
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text(item.price)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(Color(hex: "FFFFFF"))
                        .lineLimit(1)
                    
                    HStack(alignment: .center, spacing: 0) {
                        Text(item.dynamic)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(valueColor)
                            .lineLimit(1)
                        Image(item.dynamicArrow)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(valueColor)
                    }
                }
            }
            .frame(width: 168)
            .padding(12)
            .background(Color(hex: "212121"))
            .cornerRadius(radius: 16)
        }
    }
}
