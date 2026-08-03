//
//  ButtonTransactionData.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import Foundation

extension ButtonTransactionItem {
    
    static func getDataButtonTransaction() -> [ButtonTransactionItem] {
        [
            ButtonTransactionItem(label: "Staking", icon: "staking"),
            ButtonTransactionItem(label: "Savings", icon: "savings"),
            ButtonTransactionItem(label: "Copy", icon: "copy"),
            ButtonTransactionItem(label: "Loans", icon: "loans"),
        ]
    }
    
}
