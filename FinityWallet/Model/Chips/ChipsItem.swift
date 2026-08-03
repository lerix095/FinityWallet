//
//  ChipsItem.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 30.01.2026.
//

import Foundation

struct ChipsItem: Identifiable {
    var id: String = UUID().uuidString
    var label: String
    var icon: String
}
