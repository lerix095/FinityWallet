//
//  FavoriteItem.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 29.01.2026.
//

import Foundation
    
struct FavoriteItem: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var name: String
    var percent: String
    var price: String
    var dynamic: String
    var dynamicArrow: String
}

