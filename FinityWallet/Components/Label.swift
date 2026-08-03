//
//  Label.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 29.01.2026.
//

import SwiftUI

struct LabelSection: View {
    var text: String = "Label"
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color(hex: "FFFFFF"))
                .lineLimit(1)
        }
    }
}
