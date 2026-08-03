//
//  MarketCardData.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import Foundation

extension MarketCardItem {
    
    static func mockMarketCard() -> [MarketCardItem] {
        [
            MarketCardItem(image: "btc", name: "BTC", currency: "/ USDT", coefficient: "1.03", price: "$105.489,20", dynamic: "+3.24%", dynamicArrow: "arrowUp"),
            MarketCardItem(image: "eth", name: "ETH", currency: "/ USDT", coefficient: "109.23", price: "$2.520,44", dynamic: "-1.11%", dynamicArrow: "arrowDown"),
            MarketCardItem(image: "trx", name: "TRX", currency: "/ USDT", coefficient: "0.234", price: "$345,39", dynamic: "-5.34%", dynamicArrow: "arrowDown"),
            MarketCardItem(image: "dsh", name: "DSH", currency: "/ USDT", coefficient: "76.12", price: "$25,09", dynamic: "+6.05%", dynamicArrow: "arrowUp"),
            MarketCardItem(image: "xrp", name: "XRP", currency: "/ USDT", coefficient: "1.0982", price: "$1.1147", dynamic: "-0.44%", dynamicArrow: "arrowDown"),
        ]
    }
}

extension MarketCardItem {
    
    var isPositive: Bool {
        dynamic.contains("+")
    }
    
    var arrowImage: String {
        isPositive ? "arrowUp" : "arrowDown"
    }
}
