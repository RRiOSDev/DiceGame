//
//  RollDiceViewController.swift
//  DiceGame
//
//  Created by Macintosh on 8/23/17.
//  Copyright © 2017 RR Web. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    /**
     * Randomly generates a Int from 1 to 6
     */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
    }
    
    // MARK: Actions
    
    @IBAction func rollTheDice() {
        performSegue(withIdentifier: "rollDice", sender: self)
        
//        Set segues programmatically
        //        var controller:DiceViewController
        //        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        //
        //        controller.firstValue = self.randomDiceValue()
        //        controller.secondValue = self.randomDiceValue()
        //
        //        self.present(controller, animated: true, completion: nil)
    }
}

