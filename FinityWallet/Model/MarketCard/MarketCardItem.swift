//
//  MarketCardItem.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 31.01.2026.
//

import Foundation

struct MarketCardItem: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var name: String
    var currency: String
    var coefficient: String
    var price: String
    var dynamic: String
    var dynamicArrow: String
}
