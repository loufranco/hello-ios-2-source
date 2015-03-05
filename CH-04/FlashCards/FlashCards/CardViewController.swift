//
//  CardViewController.swift
//  FlashCards
//
//
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet var cardLabel: UILabel!
    @IBOutlet var answer1Button: UIButton!
    @IBOutlet var answer2Button: UIButton!
    @IBOutlet var answer3Button: UIButton!
    
    var game: Game!
    
    @IBAction func answerButtonTouched(sender: UIButton) {
        switch sender {
            case answer1Button:
                game.recordAnswer(0)
            case answer2Button:
                game.recordAnswer(1)
            case answer3Button:
                game.recordAnswer(2)
            default:
                NSLog("Unexpected")
        }
        nextCard()
    }

    func nextCard() {
        if let c = game.getCurrentCard() {            
            self.cardLabel.text = c.cardText
            self.answer1Button.setTitle(c.answers[0], forState: .Normal)
            self.answer2Button.setTitle(c.answers[1], forState: .Normal)
            self.answer3Button.setTitle(c.answers[2], forState: .Normal)
        } else {
            self.performSegueWithIdentifier("showResults", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextCard()
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let resultsVC = segue.destinationViewController as? ResultViewController {
            resultsVC.game = game
        }
    }
}
