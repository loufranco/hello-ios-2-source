//
//  AnswerKey.swift
//  FlashCards
//
//  Created by Lou Franco on 2/28/15.
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import Foundation

func makeStateCards() -> [Card] {
    return [
        Card.make(cardText: "Alabama",
            answer: "Montgomery",
            wrongAnswers:["Mobile", "Birmingham"]),
        
        Card.make(cardText: "New York",
            answer: "Albany",
            wrongAnswers:["New York City", "Buffalo"]),
        
        Card.make(cardText: "New Jersey",
            answer: "Trenton",
            wrongAnswers:["Camden", "Newark"]),
        
        Card.make(cardText: "Oklahoma",
            answer: "Oklahoma City",
            wrongAnswers:["Tulsa", "Muskogee"]),
    ]
}
    
func makeCapitalCards() -> [Card] {
    return [
        Card.make(cardText: "Montgomery",
            answer: "Alabama",
            wrongAnswers:["Mississippi", "Tennessee"]),
        
        Card.make(cardText: "Albany",
            answer: "New York",
            wrongAnswers:["New Jersey", "Buffalo"]),
        
        Card.make(cardText: "Trenton",
            answer: "New Jersey",
            wrongAnswers:["New York", "Connecticut"]),
        
        Card.make(cardText: "Oklahoma City",
            answer: "Oklahoma",
            wrongAnswers:["Missouri", "Texas"]),
    ]
}
