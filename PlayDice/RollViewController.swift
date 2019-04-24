//
//  RollViewController.swift
//  PlayDice
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {

    @IBOutlet var playdice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        return Int(randomValue)
    }
    
    @IBAction func rolltheDice(){
        performSegue(withIdentifier: "rollDice", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DiceViewController
        
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
    }
}

