//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by zsolt on 06/12/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    @IBOutlet weak var bmiResultValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultValueLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
    }    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
