//
//  ViewController.swift
//  GuessingGame
//
//  Created by Diaz, Octavio on 2018-01-09.
//  Copyright © 2018 Diaz, Octavio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberGuessed: UITextField!
    @IBOutlet weak var toUser: UILabel!
    //MARK: Properties(variables)
    
    var game = GuessingGame()
    
    //MARK: Overridden functions(overrides)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("the nuber to gess is")
        print(game.numberToGuess)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func guessButton(_ sender: Any)
    {
        print(numberGuessed.text)
        
        //Use a guardstatemeny to bind to a non-optional variable
        
        guard let inputGiven = numberGuessed.text else
        {
            //if the input was nil, sstop and return(exit) the function
            return
        }
        
        //USe a guard statement to create an integer
        guard let integerGiven = Int(inputGiven) else
        {
            //if the input was text, we can't make an integer, so stop and return(exit) the function
            return
        }
        
        //Print guessed number again
        print(integerGiven)
        toUser.text = game.checkGuess(guess: integerGiven)
    }
    //Custom functions
    
}

