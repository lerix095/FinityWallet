//
//  ButtonPrimary.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 01.02.2026.
//

import SwiftUI

struct ButtonPrimary: View {
    var labelButton: String
    
    var body: some View {
        Button {
            //
        } label: {
            Text(labelButton)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(Color(hex: "0F0F0F"))
                .background(Color(hex: "3AD17F"))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        
        .background(Color(hex: "3AD17F"))
        .cornerRadius(radius: 16)
    }
}
