//
//  Game.swift
//  FlashCards
//
//  
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import Foundation

class Game {
    private(set) var cards: [Card]
    private var currentCard = 0
    private var numRight = 0
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    func recordAnswer(answer: Int) {
        if self.cards[self.currentCard].correctAnswer == answer {
            self.numRight++
        }
        self.currentCard++
    }
    
    func getCurrentCard() -> Card? {
        if self.currentCard < self.cards.count {
            return self.cards[self.currentCard]
        }
        return nil
    }

    func getNumRight() -> Int {
        return self.numRight
    }
    
    func getNumWrong() -> Int {
        return self.currentCard - getNumRight()
    }
}