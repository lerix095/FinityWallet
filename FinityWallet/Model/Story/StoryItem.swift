//
//  StoryItem.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 30.01.2026.
//

import Foundation
    
struct StoryItem: Identifiable {
    var id: String = UUID().uuidString
    var storyImage: String
    var label: String
}
