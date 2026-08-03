//
//  MainViewModel.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 28.01.2026.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    //Favorites
    @Published var favorites: [FavoriteItem] = []
    
    func getFavoritesItems() {
        self.favorites = FavoriteItem.mockFavoriteData()
    }
    
    //Stories
    @Published var stories: [StoryItem] = []
    
    func getStoriesItems() {
        self.stories = StoryItem.mockStoriesData()
    }
    
    //Chips
    @Published var chips: [ChipsItem] = []
    
    func getChipsItem() {
        self.chips = ChipsItem.mockDataChips()
    }
    
    //MarketCard
    @Published var marketCard: [MarketCardItem] = []
    
    func getMarketCardItem() {
        self.marketCard = MarketCardItem.mockMarketCard()
    }
}
