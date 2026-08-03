//
//  CornerRadius.swift
//  P12M3L10
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
