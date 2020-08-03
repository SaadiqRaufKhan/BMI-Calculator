 //
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Saadiq rauf khan on 11/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
 
 class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        label.text = bmiValue
        view.addSubview(label) // to put our label on the screen
    }
 }
