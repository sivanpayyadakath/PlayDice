//
//  DiceViewController.swift
//  PlayDice
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {

    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet weak var firstDie: UIImageView!
    @IBOutlet weak var secondDie: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
                
        if let firstValue = self.firstValue{
            self.firstDie.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDie.image = nil
        }
        
        if let secondValue = self.secondValue{
            self.secondDie.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDie.image = nil
        }
        
        self.firstDie.alpha = 0
        self.secondDie.alpha = 0
        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3){
        self.firstDie.alpha = 1
        self.secondDie.alpha = 1
        }
    }
    

}
