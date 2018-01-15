//
//  ViewController.swift
//  GuessingGame
//
//  Created by Diaz, Octavio on 2018-01-09.
//  Copyright © 2018 Diaz, Octavio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var guessedNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GuessMade(_ sender: Any) {
        
        print("A guess was made")
        print(guessedNumber.text)
        
    }
    
}

