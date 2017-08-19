//
//  ViewController.swift
//  RandomFactGenerator
//
//  Created by Sujanth Sebamalaithasan on 19/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    
    let funFactArray = ["""
                           The average person spends
                            6 months of their lifetime
                            waiting on a red light to turn green.
                        """,
                        """
                           You burn more calories sleeping than
                           you do watching television
                        """,
                        """
                           There are more lifeforms living on your skin than there are people on the planet.
                        """,
                        """
                           A single cloud can weight more than 1 million pounds.
                        """,
                        """
                           The average person walks the equivalent of three times around the world in a lifetime.
                        """,
                        """
                           The world’s oldest piece of chewing gum is over 9,000 years old!
                        """,
                        """
                           Earth has traveled more than 5,000 miles in the past 5 minutes.
                        """,
                        """
                           Banging your head against a wall burns 150 calories an hour.
                        """
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func factGeneratorBtnPressed(_ sender: Any) {
        let randomFactNumber = Int(arc4random_uniform(UInt32(funFactArray.count)))
        factLabel.text = String(funFactArray[randomFactNumber])
    }
    


}

