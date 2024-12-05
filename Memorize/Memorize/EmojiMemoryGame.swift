//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jatin Singh on 04/12/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "🎃", "🕷️", "👿", "💀", "❄️","🧙‍♂️","🙀","☠️","🍭"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 10 ) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
            else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - intents
    
    func shuffle() {
        model.shuffle() 
    }
    
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.chooseCard(card)
    }
}
