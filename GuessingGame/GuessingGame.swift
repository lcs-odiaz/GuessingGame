//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Diaz, Octavio on 2018-01-22.
//  Copyright © 2018 Diaz, Octavio. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    //property created
    var numberToGuess : Int
    
    //initializer: automatically generates # for user, runs automatically when app opens
    init() {
        numberToGuess = Int(arc4random_uniform(501))//generates number between 0 and 500 but not 501
    }
    
    
    
}
