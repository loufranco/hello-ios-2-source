//
//  ViewController.swift
//  Hello
//
//
//  Copyright (c) 2015 Lou Franco and Eitan Mendelowitz. All rights reserved.
//

import UIKit

// Simple model function
func helloForUser(name: String) -> String {
    if name.hasPrefix("A") {
        return "Hi, \(name)"
    } else {
        return "Hello, \(name)"
    }
}

// View Controller Class
class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sayHello(sender: AnyObject) {
        self.userNameLabel.text = helloForUser(self.userNameTextField.text)
        self.helloLabel.hidden = false
        self.userNameLabel.hidden = false
    }

}

