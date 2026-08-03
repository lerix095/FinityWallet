//
//  ButtonTransactionItem.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import Foundation

struct ButtonTransactionItem: Identifiable {
    var id: String = UUID().uuidString
    var label: String
    var icon: String
}
