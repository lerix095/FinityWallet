//
//  Header.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 29.01.2026.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(alignment: .center) {
            
            Button {
                //
            } label: {
                HStack(alignment: .center) {
                    ZStack {
                        Circle()
                            .fill(Color(hex: "3AD17F"))
                            .frame(width: 42, height: 42)
                        
                        Image(.avatar)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 38, height: 38)
                    }
                    VStack(alignment: .leading, spacing: 2) {
                        Image(.badgeStatus)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 16)
                        
                        HStack(alignment: .center, spacing: 0) {
                            Text("User01")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundStyle(Color(hex: "FFFFFF"))
                                .lineLimit(1)
                            
                            Image(.chevron)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color(hex: "FFFFFF"))
                        }
                    }
                }
            }
            Spacer()
            Button {
                //
            } label: {
                ZStack(alignment: .topTrailing) {
                    Image(.bell)
                    
                    ZStack(alignment: .center){
                        Text("5")
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundStyle(Color(hex: "212121"))
                            .zIndex(1)
                        
                        Circle()
                            .fill(Color(hex: "3AD17F"))
                            .frame(width: 14, height: 14)
                    }
                    .offset(x: 4, y: -4)
                }
                .frame(width: 40, height: 40)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color(hex: "212121"))
    }
}
