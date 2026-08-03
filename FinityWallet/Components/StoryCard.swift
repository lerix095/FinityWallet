//
//  StoryCard.swift
//  P12M3L11
//
//  Created by Valeriy Protsenko on 29.01.2026.
//

import SwiftUI

struct StoryCard: View {
    let itemStory: StoryItem
    
    var body: some View {
        Button {
            //
        } label: {
            ZStack(alignment: .bottomLeading) {
                
                Image(itemStory.storyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .clipped()
                    .cornerRadius(20)
                
                Text(itemStory.label)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(8)
            }
            .frame(width: 96, height: 96)
            .overlay(RoundedRectangle(cornerRadius: 22).stroke(Color(hex: "3AD17F"), lineWidth: 1.5))
        }
    }
}
