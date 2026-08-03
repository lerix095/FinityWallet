//
//  MarketCard.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 01.02.2026.
//

import SwiftUI

struct MarketCard: View {
    var itemMarketCard: MarketCardItem
    
    private var valueColor: Color {
        itemMarketCard.isPositive ? Color(hex: "3AD17F") : Color(hex: "FA3A4A")
    }
    
    var body: some View {
        Button {
            //
        } label: {
            HStack(alignment: .center) {
                HStack(alignment: .center, spacing: 12) {
                    Image(itemMarketCard.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .center, spacing: 2) {
                            Text(itemMarketCard.name)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(Color(hex: "FFFFFF"))
                            
                            Text(itemMarketCard.currency)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(Color(hex: "AAAAAA"))
                        }
                        Text(itemMarketCard.coefficient)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(Color(hex: "AAAAAA"))
                    }
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 0) {
                    Text(itemMarketCard.price)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(Color(hex: "FFFFFF"))
                        .multilineTextAlignment(.trailing)
                    
                    HStack(alignment: .center, spacing: 0) {
                        Image(itemMarketCard.dynamicArrow)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(valueColor)
                        Text(itemMarketCard.dynamic)
                            .font(.system(size: 14, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .foregroundStyle(valueColor)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(hex: "212121"))
            .cornerRadius(radius: 16)
        }
    }
}
