//
//  ViewController.swift
//  FlashCards
//
//
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let title = (sender as? UIButton)?.currentTitle,
               cardVC = segue.destinationViewController as? CardViewController {
            
            var cards:[Card]
            if title == "Show States" {
                cards = makeStateCards()
            } else {
                cards = makeCapitalCards()
            }
            cardVC.game = Game(cards: cards)
        }
    }

}

