//
//  ViewController.swift
//  GuessingGame
//
//  Created by Diaz, Octavio on 2018-01-09.
//  Copyright © 2018 Diaz, Octavio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldGuess: UITextField!
    
    // MARK: properties (variables)
    var game = GuessingGame()
    
    //MARK: override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        //dispose any resources that can be recreated
    }
    //MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        //prints guess that was given
        print (textFieldGuess.text)
        
        //unwrap the text field's contents
        //(making sure that test field does
        // not contain nil value)
        
        guard let inputGiven = textFieldGuess.text else{
            //if we could unwrap this, unwrap the optional
            //then quit this function
            return
        }
        
        //make sure that the value is an integer
        //(Handle classes where the user enters text)
        //e. g.: five
        // Dispose of any resources that can be recreated.
        guard let guessProvided = Int(inputGiven) else {
            //if we cant convert to an integer,
            //then quit and return
            return
        }
        
        //print actual number that was given
        print(guessProvided)
        
        //print out the umber that needs to be guesed
        print("The number to be guessed is:")
        print(game.numberToGuess)
        
        //compare the guessed number to the number to be guessed
        // to do that we need an if-else if-else struc
    }
    //MARK: Custom Functions

    @IBAction func GuessMade(_ sender: Any) {
        
        print("A guess was made")
        print(textFieldGuess.text)
        if game.numberToGuess == Int(textFieldGuess.text!)!{
            print("your guess was right")
        }
    }
    
}

