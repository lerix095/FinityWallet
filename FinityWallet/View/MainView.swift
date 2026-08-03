//
//  ContentView.swift
//  FinityWallet
//
//  Created by Valeriy Protsenko on 28.01.2026.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State var selectedChip = ""
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 36) {
                    
                    VStack(alignment: .leading, spacing: 24) {
                        
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack(alignment: .center, spacing: 8) {
                                ForEach(viewModel.stories) { item in
                                    StoryCard(itemStory: item)
                                }
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                        }
                        
                        TotalBalance()
                            .padding(.horizontal, 16)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        LabelSection(text: "Favorites")
                            .padding(.horizontal, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 8) {
                                ForEach(viewModel.favorites) { item in
                                    FavoriteCard(item: item)
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        VStack(alignment: .leading, spacing: 8) {
                            LabelSection(text: "Market")
                            HStack(alignment: .center, spacing: 8) {
                                ForEach(viewModel.chips) { chip in
                                    Chips(selectedChip: $selectedChip, item: chip)
                                }
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(viewModel.marketCard) { card in
                                MarketCard(itemMarketCard: card)
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        ButtonPrimary(labelButton: "All Markets")
                            .padding(.horizontal, 16)
                    }
                }
                .onAppear {
                    viewModel.getFavoritesItems()
                    viewModel.getStoriesItems()
                    viewModel.getChipsItem()
                    
                    if selectedChip.isEmpty {
                        selectedChip = viewModel.chips.first?.id ?? ""
                    }
                    
                    viewModel.getMarketCardItem()
                }
            }
            .padding(.top, 60)
            Header()
        }
        .background(LinearGradient(colors: [Color(hex: "212121"), Color(hex: "0F0F0F")], startPoint: .top, endPoint: .bottom))
    }
}
    
#Preview {
    MainView()
}

