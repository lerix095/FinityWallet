//
//  CornerRadius.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 28.01.2026.
//

import SwiftUI

extension View {
    func cornerRadius(radius: CGFloat) -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: radius))
    }
}
