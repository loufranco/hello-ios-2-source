//
//  ResultViewController.swift
//  FlashCards
//
//  Created by Lou Franco on 2/28/15.
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var numRightLabel: UILabel!
    @IBOutlet var numWrongLabel: UILabel!

    var game: Game!
    
    @IBAction func startAgain(sender: UIButton) {
        if let home = UIApplication.sharedApplication().delegate?.window??.rootViewController {
            home.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.numRightLabel.text = "\(game.getNumRight()) Right"
        self.numWrongLabel.text = "\(game.getNumWrong()) Wrong"
    }

}
