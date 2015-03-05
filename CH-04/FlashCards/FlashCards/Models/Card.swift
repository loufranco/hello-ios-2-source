//
//  Card.swift
//  FlashCards
//
//
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import Foundation

struct Card {
    let cardText: String
    let answers: [String]
    let correctAnswer: Int
    
    static func make(#cardText: String, answer: String, wrongAnswers:[String]) -> Card {
        let correctAnswer = Int(arc4random_uniform(UInt32(wrongAnswers.count) + 1))
        
        var allAnswers = wrongAnswers
        allAnswers.insert(answer, atIndex: correctAnswer)
        
        return Card(cardText: cardText,
            answers: allAnswers,
            correctAnswer: correctAnswer)
    }
}

