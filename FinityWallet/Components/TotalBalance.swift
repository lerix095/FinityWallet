//
//  TotalBalance.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 30.01.2026.
//

import SwiftUI

struct TotalBalance: View {
    var buttonTransactionItem = ButtonTransactionItem.getDataButtonTransaction()
    @State var selectedTab = "3M"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .center, spacing: 4) {
                    Text("Total balance")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(Color(hex: "AAAAAA"))
                    Button {
                        //
                    } label: {
                        Image(.eye)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color(hex: "8F8F8F"))
                    }
                }
                
                HStack(alignment: .center, spacing: 4) {
                    Text("10.240,98")
                        .font(.system(size: 32, weight: .medium))
                        .foregroundStyle(Color(hex: "FFFFFF"))
                    
                    Text("USDT")
                        .font(.system(size: 32, weight: .medium))
                        .foregroundStyle(Color(hex: "AAAAAA"))
                }
                
                
                HStack(alignment: .center, spacing: 12) {
                    Text("≈ $10.240,98")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(Color(hex: "FFFFFF"))
                    
                    HStack(alignment: .center, spacing: 0) {
                        Image(.arrowUp)
                            .resizable()
                            .fixedSize()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color(hex: "3AD17F"))
                        
                        Text("+3.24%")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(Color(hex: "3AD17F"))
                    }
                    .padding(.vertical, 2)
                    .padding(.leading, 2)
                    .padding(.trailing, 4)
                    .background(Color(hex: "28342D"))
                    .cornerRadius(radius: 6)
                }
                
            }
            
            Tabs(isActive: $selectedTab)
            
            HStack(alignment: .center, spacing: 8) {
                ForEach(buttonTransactionItem) { item in
                    ButtonTransaction(item: item)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color(hex: "212121"))
        .cornerRadius(radius: 20)
    }
}
