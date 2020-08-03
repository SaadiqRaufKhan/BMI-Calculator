//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Saadiq Rauf Khan on 04/05/2020.
//  Copyright © 2019 Saadiq Rauf Khan. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
   
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
     

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightVar = String(format: "%.2f", sender.value)
        heightLabel.text = heightVar+"m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightVar = String(Int(sender.value ))
        weightLabel.text = weightVar+"Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
       
    }
    // this method runs before segues run
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

