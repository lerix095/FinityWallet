//
//  MockChipsData.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 30.01.2026.
//

import Foundation

extension ChipsItem {
    
    static func mockDataChips() -> [ChipsItem] {
        [
            ChipsItem(label: "Change", icon: "sorting"),
            ChipsItem(label: "Name", icon: "sorting"),
            ChipsItem(label: "Volume", icon: "sorting"),
            ChipsItem(label: "Price", icon: "sorting"),
        ]
    }
}
