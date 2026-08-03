//
//  MockFavoriteData.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 30.01.2026.
//

import Foundation

extension FavoriteItem {
    
    static func mockFavoriteData() -> [FavoriteItem] {
        [
            FavoriteItem(image: "btc", name: "BTC", percent: "+3.24%", price: "$105.489,20", dynamic: "+$269.12", dynamicArrow: "arrowUp"),
            FavoriteItem(image: "eth", name: "ETH", percent: "-0.89%", price: "$2.520,44", dynamic: "-$4.42", dynamicArrow: "arrowDown"),
            FavoriteItem(image: "trx", name: "TRX", percent: "+1.91%", price: "$345,39", dynamic: "+$22.73", dynamicArrow: "arrowUp"),
            FavoriteItem(image: "dsh", name: "DSH", percent: "+3.33%", price: "$25,09", dynamic: "+$2.64", dynamicArrow: "arrowUp"),
            FavoriteItem(image: "btc", name: "BTC", percent: "+3.24%", price: "$105.489,20", dynamic: "+$269.12", dynamicArrow: "arrowUp"),
            FavoriteItem(image: "eth", name: "ETH", percent: "-0.89%", price: "$2.520,44", dynamic: "-$4.42", dynamicArrow: "arrowDown"),
            FavoriteItem(image: "trx", name: "TRX", percent: "+1.91%", price: "$345,39", dynamic: "+$22.73", dynamicArrow: "arrowUp"),
            FavoriteItem(image: "dsh", name: "DSH", percent: "+3.33%", price: "$25,09", dynamic: "+$2.64", dynamicArrow: "arrowUp"),
        ]
    }
}
    
extension FavoriteItem {
    
    var isPositive: Bool {
        percent.contains("+")
    }
    
    var arrowImage: String {
        isPositive ? "arrowUp" : "arrowDown"
    }
}
